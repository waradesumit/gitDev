<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Approval_Status_Approved</fullName>
        <field>Approval_Status__c</field>
        <literalValue>Approved</literalValue>
        <name>Approval Status Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Approval_Status_Rejected</fullName>
        <field>Approval_Status__c</field>
        <literalValue>Rejected</literalValue>
        <name>Approval Status Rejected</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Field_Update</fullName>
        <field>Approval_Status__c</field>
        <literalValue>Approved</literalValue>
        <name>Field Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Field_Update_by_WF_rule</fullName>
        <field>Approval_Status__c</field>
        <literalValue>Approved</literalValue>
        <name>Field Update by WF rule</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_Pending_Approval</fullName>
        <field>Approval_Status__c</field>
        <literalValue>Pending Approval</literalValue>
        <name>Status Pending Approval</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_update</fullName>
        <field>Approval_Status__c</field>
        <literalValue>Approved</literalValue>
        <name>Status update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Step1</fullName>
        <field>Approval_Status__c</field>
        <literalValue>Approved</literalValue>
        <name>Step1</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Approval_Status</fullName>
        <field>Approval_Status__c</field>
        <literalValue>Approved</literalValue>
        <name>Update Approval Status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Status</fullName>
        <field>Approval_Status__c</field>
        <literalValue>Approved</literalValue>
        <name>Update Status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Status_Field</fullName>
        <field>Approval_Status__c</field>
        <literalValue>Approved</literalValue>
        <name>Update Status Field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Opp rule</fullName>
        <actions>
            <name>Field_Update_by_WF_rule</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Negotiation/Review</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Opportunity Approval</fullName>
        <actions>
            <name>Update_Status</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>lessOrEqual</operation>
            <value>50</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
