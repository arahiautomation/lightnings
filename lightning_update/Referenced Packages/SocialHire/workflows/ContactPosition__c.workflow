<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Thankyou_for_applying</fullName>
        <description>Thankyou for applying</description>
        <protected>false</protected>
        <recipients>
            <field>Candidate__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>SocialHire/Candidate_Application_Link</template>
    </alerts>
    <rules>
        <fullName>New Application Notification</fullName>
        <actions>
            <name>Thankyou_for_applying</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Position__c.OwnerId</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>ContactPosition__c.Internal_Application__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
