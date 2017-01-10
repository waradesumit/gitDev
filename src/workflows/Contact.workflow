<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Forgot_Password</fullName>
        <description>Forgot Password</description>
        <protected>false</protected>
        <recipients>
            <field>Email</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Forgot_Password</template>
    </alerts>
    <alerts>
        <fullName>Test_Email</fullName>
        <description>Test Email</description>
        <protected>false</protected>
        <recipients>
            <recipient>waradesumit@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Payment_Approval_Email</template>
    </alerts>
    <rules>
        <fullName>Forgot Password</fullName>
        <actions>
            <name>Forgot_Password</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Count__c</field>
            <operation>equals</operation>
            <value>Y</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>test</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Email</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
