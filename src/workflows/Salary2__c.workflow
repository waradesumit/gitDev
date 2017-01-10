<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Set_Checkbox_to_true</fullName>
        <field>CheckBox__c</field>
        <literalValue>1</literalValue>
        <name>Set Checkbox to true</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_record_type</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Salary_ECS</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Update record type</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Change PageLayout using Workflow</fullName>
        <actions>
            <name>Update_record_type</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Salary2__c.Payment_Mode__c</field>
            <operation>equals</operation>
            <value>ECS</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Checkbox field to true</fullName>
        <actions>
            <name>Set_Checkbox_to_true</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Salary2__c.CheckBox__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
