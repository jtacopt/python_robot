import json

class ParseGetBookingResponse:

    def __int__(self):
        pass

    def get_booking(self, json_string):
        try:
            booking_data = json.loads(json_string)
            return booking_data
        except json.JSONDecodeError as e:
            raise ValueError(f"Failed to parse JSON: {str(e)}")

    def get_first_name(self, book_info):
        try:
            return book_info['firstname']
        except KeyError:
            raise KeyError("Key 'firstname' not found in the book information")

    def get_last_name(self, book_info):
        try:
            return book_info['lastname']
        except KeyError:
            raise KeyError("Key 'lastname' not found in the book information")
