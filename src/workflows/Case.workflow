<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>A_Chronic_disease_patient_assigned_to_Doctor1</fullName>
        <description>A Chronic disease patient assigned to Doctor1</description>
        <protected>false</protected>
        <recipients>
            <recipient>waradesumit@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Patient_assignment</template>
    </alerts>
    <fieldUpdates>
        <fullName>Assign_Doctor</fullName>
        <field>Origin</field>
        <name>Assign Doctor</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Owner_for_Chronic_disease</fullName>
        <field>OwnerId</field>
        <lookupValue>Chronic_disease</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Owner for Chronic disease</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Assign Chronic disease</fullName>
        <actions>
            <name>A_Chronic_disease_patient_assigned</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Case.Disease__c</field>
            <operation>equals</operation>
            <value>Chronic disease</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Generate_payment_for_Chronic_disease_patient</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Case.CreatedDate</offsetFromField>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <tasks>
        <fullName>A_Chronic_disease_patient_assigned</fullName>
        <assignedTo>waradesumit@gmail.com</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>A Chronic disease patient assigned</subject>
    </tasks>
    <tasks>
        <fullName>Chronic_disease_patient_assigned</fullName>
        <assignedTo>waradesumit@gmail.com</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>Case.CreatedDate</offsetFromField>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Chronic disease patient assigned</subject>
    </tasks>
    <tasks>
        <fullName>Generate_payment_for_Chronic_disease_patient</fullName>
        <assignedTo>waradesumit@gmail.com</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Generate payment for Chronic disease patient</subject>
    </tasks>
    <tasks>
        <fullName>New_patient_with_Chronic_disease_assigned</fullName>
        <assignedTo>philkurtz@yahoo.com</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>1</dueDateOffset>
        <notifyAssignee>true</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>New patient with Chronic disease assigned</subject>
    </tasks>
    <tasks>
        <fullName>Patient_with_Chronic_disease_assigned</fullName>
        <assignedTo>philkurtz@yahoo.com</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>1</dueDateOffset>
        <notifyAssignee>true</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Patient with Chronic disease assigned</subject>
    </tasks>
</Workflow>
