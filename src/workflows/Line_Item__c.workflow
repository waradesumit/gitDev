<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Update_with_Merchandise_Price</fullName>
        <field>Unit_Price__c</field>
        <formula>Merchandise__r.Price__c</formula>
        <name>Update with Merchandise Price</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Copy Unit Price</fullName>
        <actions>
            <name>Update_with_Merchandise_Price</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <formula>true</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
