---
classification: confidential #Remove this line if it's not IBM Confidential.
status: draft #Status can be draft, reviewed or published.
owner: Jagan Dusi
---
<!--- # Introduction --->

!!! note "The latest version can always be found here: https://pages.github.ibm.com/IBM-Cloud-Satellite-and-PaaS-Community/rhoai-demo-oict/"

<!--- [Download the latest (PDF)](pdf/rhoai-demo-oict.pdf){ .md-button } [Download the latest (DOCX)](out/rhoai-demo-oict.docx){ .md-button } --->


# Red Hat OpenShift AI to move from Pilot into production for AI lifecycle management - Demo Script
<p align="center">
  <img src="images/rhoai-title.png" />
</p>

***Notes to sellers and tech sellers:***

1. This narrative uses an example customer scenario.
2. This demo script assumes that you are presenting to the customer based on your previous conversation and recapping issues and concerns shared by the customer
3. Feel free to tailr the demo script based on the customer AI adoption maturity and identify relevant demo to show such as Red Hat OpenShift AI, RHEL AI or Watsonx services from [AI on Cloud demos in Techzone](https://techzone.ibm.com/collection/IBMCloudTechDemos/journey-ai-on-ibm-cloud). If you dont find what you need please reach out to the [contacts](https://pages.github.ibm.com/IBM-Cloud-Satellite-and-PaaS-Community/rhoai-demo-oict/#contacts) in the demo script.

### Use case

Expand on existing AI/ML to build Gen AI applications and manage lifecycle of AI models in dev, test and production consistently.


### Customer scenario

**Persona:** Senior Vice President of large consumer electronics corporation

Good morning, I know you have been using ML models in Maximo Visual inspection* for defect analysis of appliance assembly line to reduce quality compliance costs. I see you are excited to see the value of Gene AI to improve our employee productivity, customer experience and even automation of operational workflows. 

(***NOTE***: Maximo is used as an example as there are about 1000+ customers ww, but feel free to replace Maximo with other products as appropriate)

I would like to recap specific concerns you shared with us:

•	Can existing ML models be leveraged for Generative AI to improve our decision making, defect forecast and customer care

•	Can your customer care knowledge repositories be used to train the model or augment t the response generated for trusted ustomer care. 

•	Lack of skills to maintain AI operational platform


I am here today to show you a typical journey map for Gen AI adoption and happy to address your concerns. I will also walk you through how your developers can explore AI and LLM with your enterprise data.

<p align="center">
  <img src="images/Ai-maturity.png" />
</p>

The capabilities and results of each phase is explained below:

1.	Many customers follow similar Generative AI journey, where initially they explore to kick off Pilot projects by using existing Large Language Models (LLM) such as IBM Granite family of models . Granite family of models come with curated and trusted data that can help generate content to specific questions. Granite code model can help developers to generate code across 116 programming languages to improve their code development and testing cycles.
2.	As they validate the expected outcomes and success criteria of the AI pilot project, they will try to move the Pilot project into production. While in production they will evaluate fit for purpose models to align to the business value expected.
3.	From the initial production experience, customers look to leverage existing data repositories using RAG patterns to improve accuracy and domain specific responses from the AI models.
4.	Now is the time to measure the adoption in terms of users and inferencing metrics, to scale AI adoption across the organization and enable more AI applications. During this phase production environment will implement monitoring practices to measure performance and user experience of AI generated content.
5.	At more matured level of AI adoption, organizations look to innovate to differentiate their competitive edge in the industry by using power of AI and accelerate technology transformation to improve operational efficiency and reduce technical debt.

IBM and Red Hat together offer many AI solutions and platforms, for you to jump start your Gen AI journey and mature to level 5. IBM Watsonx offers SaaS and Software deployment models to meet your Hybrid cloud needs as appropriate with matured governance capabilities, prompt engineering and model tuning capabilities.

Red Hat AI offers Red Hat Enterprise Linux AI (RHEL AI) and Red Hat OpenShift AI (RHOAI) to enable you from exploring Generative AI models to move to production quickly. RHOAI provides an AI platform to move pilots into production phase to manage model and application lifecycles, adapt to hardware acceleration requirements, and deploy, run, and operate AI models. RHOAI includes RHEL AI too.
Now, let’s look at Red Hat OpenShift AI and how it meets your needs for a consistent AI platform:

**Red Hat OpenShift AI** allows you to do the following:  

•	As an integrated MLOps platform manages the lifecycle of traditional predictive AI and generative AI models

•	Delivers AI-enabled applications at scale across hybrid cloud environments 

•	Supports a bring-your-own-model approach, includes distributed compute, collaborative workflows, model serving, and monitoring. 

•	Includes RHEL AI, including the Granite family models, indemnified and also includes InstructLAB tools 

•	Enables Hybrid cloud deployment including air-gapped or disconnected environment

Let me give quick introduction to terms I used Granite and InstructLAB, just incase or to refresh those who already know it.

IBM created **Granite** series of large language models (LLMs) for enterprise applications. Granite foundation models can support generative artificial intelligence (gen AI) use cases that involve language and code for 116 programming languages.

Granite was trained on enterprise-relevant content that meets rigorous data governance, regulatory and risk criteria defined and enforced by IBM’s AI Ethics principles and its Office of Privacy & Responsible Technology.

**InstructLAB** 

(LAB = **L**arge-Scale **A**lignment for Chat**B**ots.)

InstructLAB, created by IBM and Red Hat, is an open source project for enhancing LLMs used **gen AI applications**. The InstructLab community project provides a cost-effective solution for improving the alignment of LLMs and opens the doors for those with minimal machine learning experience to contribute.

IBM Cloud simplifies installing RHOAI as an add-on to an already running ROKS cluster and as a [**Deployable architecture**](https://cloud.ibm.com/catalog/7a4d68b4-cf8b-40cd-a3d1-f49aff526eb3/architecture/roks-rhoai-c24ae512-8b25-43d7-8fb3-4173c7e94472-global) . With this add-on and Deployable architecture, users can introduce consistent AI platform to run both predictive and Generative AI workloads on ROKS seamlessly. 
Data Scientists can focus on model development and similarly Application developers can focus on model serving while being on the same platform. Red Hat OpenShift allows resource optimization and management out-of-the-box which supports AI focused development to be carried out easily with OpenShift AI.

For this demo, I pre-provisioned a Red Hat OpenShift on IBM Cloud (ROKS) cluster and installed Red Hat OpenShift AI add-on and happy to walk you through.

Please see the [**BLOG**](https://community.ibm.com/community/user/cloud/blogs/sugandha-agrawal/2025/01/20/introducing-red-hat-openshift-ai-on-ibm-cloud) for the announcement of Red Hat OpenShift as an add-on to ROKS cluster.

### Demo steps

1. Login to IBM Cloud and go to containers and clusters to see ROKS cluster pre-provisioned
![step1](images/rhoai-step1.png)

2. See the ROKS cluster running
![step2](images/rhoai-step2.png)

3. When you click on the cluster you can see two worker pools one with 2 worker nodes and other with a GPU node as a minimum demo configuration
![step3](images/rhoai-step3.png)

4. On the cluster overview section scroll down to see the RHOAI add-on, click on “Install” to leverage fully automated deployment of RHOAI onto this cluster
![step4](images/rhoai-step4.png)

5. Now Open the OpenShift console to be able to launch OpenShift AI Console within it
![step5](images/rhoai-step5.png)

6. In the OpenShift console, on the right side click on the menu icon to launch OpenShift AI console
![step6](images/rhoai-step6.png)

7. You will see a Login prompt, and click Login to login using IAM credentials
![step7](images/rhoai-step7.png)

8. Now you will OpenShift AI Console
![step8](images/rhoai-step8.png)

9. Begin experiential journey using learning resources
![step9](images/rhoai-step9.png)

10. As you work on any of the example tutorials included in RHOAI console, such as "Fraud detection" , they all follow similar **Model Serving Workflow** as explained below
![step10](images/rhoai-model-serving.png) 

Steps in the model serving workflow are:

  1. Users train or tune their machine learning models on top of OpenShift AI using Granite models or bring their own model.
  2. ML models need to be uploaded into an object store (s3 compatible) so that they can be pulled in at the time of serving
  3. Users select a type of model serving platform such as KServe or ModelMesh
  4. User adds a model server selecting a serving runtime, cpu/memory, choice of accelerator, etc., Serving runtime supports serving one or more model formats
  5. User deploys the model specifying the (a) model framework (supported by the model server selected in Step 4 and goes with the user’s model), (b) location in the object store where the model is stored
  6. Once deployed , model is pulled from the object store into the serving runtime pod
  7. User is provided with an endpoint (HTTP and gRPC)
  8. Applications use the api endpoint for inference (send input data and get back prediction)

You can see how quick and easy it is to deploy RHOAI onto a ROKS cluster or leverage Deployable Architecture to deploy from scratch the ROKS cluster and then RHOAI. 

We are happy to have a workshop with you to dive deep into the use cases and initiate a Gen AI pilot project, targeted outcomes and expectations to move to production.


### Demo summary

•	Now you know RHOAI is the platform of your choice to manage both traditional AI and Generative AI models consistently across the Hybrid cloud in all environments

•	Your developers can quickly get started to experience InstructLAB using Granite family of models. 

•	Scale on demand using cloud AI infrastructure (GPUs , compute, storage, Network connectivity etc.) as needed

•	You can kick off a new Pilot project or move current pilots into production.

•	Below table gives you an idea on investment for Red Hat OpenShift AI add-on on IBM Cloud, with different types of GPUs

![step10](images/rhoai-step10.png)

IBM TEAM from  Cloud, Client Engineering, Software and Red Hat can support your AI journey end to end until you mature to leve5 to achieve competitive edge in your business by innovating to realize operational efficiencies.

Checkout the [demo video here](https://mediacenter.ibm.com/media/1_88jkmhna) and try out [**Red Hat OpenShift on IBM Cloud**](https://cloud.ibm.com/containers/cluster-management/clusters) to get started by creating a cluster with OpenShift AI add-on. The minimum requirement on the cluster are [documented here](https://cloud.ibm.com/docs/openshift?topic=openshift-ai-addon-install&interface=ui#ai-min).

### Do It Yourself

Please use the [**Deployable architecture**](https://cloud.ibm.com/catalog/7a4d68b4-cf8b-40cd-a3d1-f49aff526eb3/architecture/roks-rhoai-c24ae512-8b25-43d7-8fb3-4173c7e94472-global) to deploy ROKS cluster along with RHOAI add-on to begin your experiential journey.

### Learning resources

[Cloud docs for Red Hat OpenShift AI](https://cloud.ibm.com/docs/openshift?topic=openshift-ai-addon-about&interface=ui)

[Red Hat Documentation for OpenShift AI](https://docs.redhat.com/en/documentation/red_hat_openshift_ai/2025)

### Contacts

**WW Tech Sales**

Jagan Dusi (dusij@us.ibm.com) - WW Technical Sales Leader, AI and Cloud native, IBM Cloud

Vivek Subramanian (vsubrama@us.ibm.com) - Executive Architect, Cloud Solutioning, - IBM Cloud

**Geo Tech Sales**

AMERICAS Leader – Jeff Greenberg (jgreenberg@us.ibm.com)

SME team - Tom Scott (tscott@us.ibm.com)

EMEA  Leader - Barry Brown (BARRYBRO@ie.ibm.com)

SME team - Lionel Mace (lionel.mace@fr.ibm.com)

AP Leader – Vamsi Mudiam (vamsi.mudiam@ibm.com)

Japan Leader – Hiroshi Kohno (HKOHNO@jp.ibm.com)

**Client Engineering**

[WW contacts](https://w3.ibm.com/w3publisher/client-engineering/team)

**Product Management:**

Darrel Schrag (drschrag@us.ibm.com), Product Manager, ROKS/IKS

Su Agrawal (agrawals@de.ibm.com), Product Manager, Cloud Containers

Dave Tropeano (davetropeano@us.ibm.com), Program Director, Containers + AI + Distributed Cloud
