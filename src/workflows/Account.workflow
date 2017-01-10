<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Change_Owner</fullName>
        <field>OwnerId</field>
        <lookupValue>waradesumit@gmail.com</lookupValue>
        <lookupValueType>User</lookupValueType>
        <name>Change Owner</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Change owner to Sumit Warade</fullName>
        <actions>
            <name>Change_Owner</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Account.OwnerId</field>
            <operation>notEqual</operation>
            <value>Sumit Warade</value>
        </criteriaItems>
        <description>Change owner to Sumit Warade</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
