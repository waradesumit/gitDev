<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Reassign_Detail_to_queue</fullName>
        <field>OwnerId</field>
        <lookupValue>EMEA_Q</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Reassign Detail to queue</name>
        <notifyAssignee>true</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Assign lead to appropriate queue</fullName>
        <actions>
            <name>Reassign_Detail_to_queue</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>User.UserRoleId</field>
            <operation>notEqual</operation>
            <value>Recruiter,Recruiting Manager</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
