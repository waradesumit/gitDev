<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Payment_status</fullName>
        <description>Payment status</description>
        <protected>false</protected>
        <recipients>
            <recipient>waradesumit@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Payment_approved_rejected</template>
    </alerts>
    <alerts>
        <fullName>Payment_status_by_Head</fullName>
        <description>Payment status by Head</description>
        <protected>false</protected>
        <recipients>
            <recipient>waradesumit@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Payment_approved_rejected</template>
    </alerts>
    <fieldUpdates>
        <fullName>Payment_Status</fullName>
        <field>Payment_Status__c</field>
        <literalValue>Approved</literalValue>
        <name>Payment Status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Payment_Status_Apprvd</fullName>
        <field>Payment_Status__c</field>
        <literalValue>Approved</literalValue>
        <name>Payment Status Apprvd</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Payment_Status_Rjctd</fullName>
        <field>Payment_Status__c</field>
        <literalValue>Rejected</literalValue>
        <name>Payment Status Rjctd</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
</Workflow>
