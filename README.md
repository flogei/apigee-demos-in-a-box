# Apigee Edge demos-in-a-box
All in one repository for all the things to demonstrate with Apigee

## <a name="prerequisites"></a>Prerequisites

1. If you don't have one, you'll need to obtain an Apigee account. [Sign up for a free trial account.](https://accounts.apigee.com/accounts/sign_up)

2. You also need to have [Python](http://python.org/getit/) on your system, to use the deployment tool for the API proxies via the shell script.

3. Download this project from GitHub to your system.

## <a name="initial"></a>Setting up

```shell
source ./scripts/setup-creds.sh
``` 

## <a name"deployconfig"></a>Deploy the Config
```shell
cd config
```

```shell
mvn install \
-Ptest -Dusername=$APIGEE_USER \
-Dpassword=$APIGEE_PASS \
-Dorg=$APIGEE_ORG \
-Denv=$APIGEE_ENV \
-Dapigee.config.file="config/edgeTest.json" \
-Dapigee.config.options=create
```

## <a name="bulk"></a>Deploy sample proxies

You can deploy all of the samples to your organization at once using a simple setup script provided in this distribution.

1. Update the file `/setup/setenv.sh` with settings for your Apigee account.

2. Run `deploy_all.sh`

    **Note**: This step deploys all API products, developers, and apps needed for samples that use OAuth.


## <a name="ask"></a>Ask questions on the Apigee Community

Apigee Community is a great place to ask questions and find answers about developing API proxies. <a href="https://community.apigee.com?via=github">(https://community.apigee.com?via=github)</a>

## <a name="docs"></a>Apigee Edge documentation

The Apigee Edge docs are [here](https://docs.apigee.com). 

---

Copyright © 2018 Apigee Corporation

Licensed under the Apache License, Version 2.0 (the "License"); you may 
not use this file except in compliance with the License. You may obtain 
a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
