<aura:application extends="force:slds" >
    <aura:attribute name="appcontacts" type="contact[]"/>
    <aura:attribute name="showtable" type="boolean"/>
    <aura:handler name="contactsearchcomplete" event="c.searchcompleteevent" action="{!c.handlerevent}"/>
        <c:contactsearch/> 
    <aura:if istrue="{!v.showtable}">
        <c:contaccttable aura:id="contactlist" contacts="{!v.appcontacts}"/>
    </aura:if>
</aura:application>