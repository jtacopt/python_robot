# Robot Framework

[Keywords](https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html)

## Installation 

[Robot Framework User Guide](https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html)

### Install Pyton & PIP

#### Pyhton

[python](https://www.python.org/)

Check Python Installation 

Note: Add Python to the PATH
```shell 
python -V
```
>Python 3.12.0

#### PIP

Check PIP installation 

```shell
pip -V
```
>pip 23.2.1 from (...)

Check for updates
```shell
pip list
```
### Install Robot & Selenium (GUI)

```shell
pip install robotframework-seleniumlibrary
```

### Install Robot & Requests (API)

```shell
pip install robotframework-requests
```

## Setup

Make sure that everything is installed

```shell
pip list
```

    Package                        Version
    ------------------------------ ---------
    attrs                          23.1.0
    certifi                        2023.7.22
    cffi                           1.16.0
    charset-normalizer             3.3.0
    h11                            0.14.0
    idna                           3.4
    outcome                        1.2.0
    pip                            23.3
    pycparser                      2.21
    PySocks                        1.7.1
    requests                       2.31.0
    robotframework                 6.1.1
    robotframework-pythonlibcore   4.2.0
    robotframework-requests        0.9.5
    robotframework-seleniumlibrary 6.1.3
    selenium                       4.14.0
    sniffio                        1.3.0
    sortedcontainers               2.4.0
    trio                           0.22.2
    trio-websocket                 0.11.1
    urllib3                        2.0.6

### IDE

[PyCharm](https://www.jetbrains.com/pycharm)

#### Install Robot Framework Language Server

Add a Debug Configuration for Robot Framework

Arguments as:
>-d results

## Execution

```shell
robot Tests/Playgound.robot
```
