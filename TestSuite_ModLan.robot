*** Settings ***
Resource    lib/MOD_LAN_01_TC_01.txt
Resource    lib/MOD_LAN_01_TC_02.txt
Resource    lib/MOD_LAN_01_TC_03.txt
Resource    lib/MOD_LAN_02_TC_01.txt
Resource    lib/MOD_LAN_02_TC_02.txt
Resource    lib/MOD_LAN_02_TC_03.txt
Resource    lib/MOD_LAN_02_TC_04.txt
Resource    lib/MOD_LAN_02_TC_05.txt
Resource    lib/MOD_LAN_03_TC_01.txt
Resource    lib/MOD_LAN_03_TC_02.txt
Resource    lib/MOD_LAN_03_TC_03.txt
Resource    lib/MOD_LAN_03_TC_04.txt
Resource    lib/MOD_LAN_03_TC_05.txt
Resource    lib/MOD_LAN_03_TC_06.txt
Resource    lib/MOD_LAN_04_TC_01.txt
Resource    lib/MOD_LAN_04_TC_02.txt
Resource    lib/MOD_LAN_04_TC_03.txt
Resource    lib/MOD_LAN_04_TC_04.txt
Resource    lib/MOD_LAN_04_TC_05.txt
Resource    lib/MOD_LAN_04_TC_06.txt
Resource    lib/MOD_LAN_04_TC_07.txt
Resource    lib/MOD_LAN_04_TC_08.txt
Resource    lib/MOD_LAN_04_TC_09.txt
Resource    lib/MOD_LAN_05_TC_01.txt
Resource    lib/MOD_LAN_05_TC_02.txt
Resource    lib/MOD_LAN_05_TC_03.txt
Resource    lib/MOD_LAN_05_TC_04.txt

*** Variables ***
${REMOTE_SERVER_IP}            10.2.204.165
${REMOTE_SERVER_USERNAME}      telco
${REMOTE_SERVER_PASSWORD}      123456

*** Test Cases ***
MOD_LAN_01_TC_01
    MOD_LAN_01_TC_01

MOD_LAN_01_TC_02
    MOD_LAN_01_TC_02

MOD_LAN_01_TC_03
    MOD_LAN_01_TC_03

MOD_LAN_02_TC_01
    MOD_LAN_02_TC_01

MOD_LAN_02_TC_02
    MOD_LAN_02_TC_02

MOD_LAN_02_TC_03
    MOD_LAN_02_TC_03

MOD_LAN_02_TC_04
    MOD_LAN_02_TC_04

MOD_LAN_02_TC_05
    MOD_LAN_02_TC_05

MOD_LAN_03_TC_01
    MOD_LAN_03_TC_01

MOD_LAN_03_TC_02
    MOD_LAN_03_TC_02

MOD_LAN_03_TC_03
    MOD_LAN_03_TC_03

MOD_LAN_03_TC_04
    MOD_LAN_03_TC_04

MOD_LAN_03_TC_05
    MOD_LAN_03_TC_05

MOD_LAN_03_TC_06
    MOD_LAN_03_TC_06

MOD_LAN_04_TC_01
    MOD_LAN_04_TC_01

MOD_LAN_04_TC_02
    MOD_LAN_04_TC_02

MOD_LAN_04_TC_03
    MOD_LAN_04_TC_03

MOD_LAN_04_TC_04
    MOD_LAN_04_TC_04

MOD_LAN_04_TC_05
    MOD_LAN_04_TC_05

MOD_LAN_04_TC_06
    MOD_LAN_04_TC_06

MOD_LAN_04_TC_07
    MOD_LAN_04_TC_07

MOD_LAN_04_TC_08
    MOD_LAN_04_TC_08

MOD_LAN_04_TC_09
    MOD_LAN_04_TC_09

MOD_LAN_05_TC_01
    MOD_LAN_05_TC_01

MOD_LAN_05_TC_02
    MOD_LAN_05_TC_02

MOD_LAN_05_TC_03
    MOD_LAN_05_TC_03

MOD_LAN_05_TC_04
    MOD_LAN_05_TC_04
