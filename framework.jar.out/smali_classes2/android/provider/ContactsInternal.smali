.class public Landroid/provider/ContactsInternal;
.super Ljava/lang/Object;
.source "ContactsInternal.java"


# static fields
.field private static final CONTACTS_URI_LOOKUP:I = 0x3e9

.field private static final CONTACTS_URI_LOOKUP_ID:I = 0x3e8

.field private static final sContactsUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 42
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Landroid/provider/ContactsInternal;->sContactsUriMatcher:Landroid/content/UriMatcher;

    .line 49
    sget-object v0, Landroid/provider/ContactsInternal;->sContactsUriMatcher:Landroid/content/UriMatcher;

    .line 50
    .local v0, "matcher":Landroid/content/UriMatcher;
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/lookup/*"

    const/16 v3, 0x3e9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 51
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/lookup/*/#"

    const/16 v3, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 52
    .end local v0    # "matcher":Landroid/content/UriMatcher;
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method private static maybeStartManagedQuickContact(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 24
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "originalIntent"    # Landroid/content/Intent;

    .line 91
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 94
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 95
    .local v1, "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x4

    if-ge v2, v5, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    .line 96
    .local v2, "isContactIdIgnored":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 97
    sget-wide v5, Landroid/provider/ContactsContract$Contacts;->ENTERPRISE_CONTACT_ID_BASE:J

    goto :goto_1

    .line 98
    :cond_1
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    :goto_1
    move-wide v13, v5

    .line 99
    .local v13, "contactId":J
    const/4 v5, 0x2

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v15, v5

    check-cast v15, Ljava/lang/String;

    .line 100
    .local v15, "lookupKey":Ljava/lang/String;
    const-string v5, "directory"

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 101
    .local v12, "directoryIdStr":Ljava/lang/String;
    const-wide/32 v5, 0x3b9aca00

    if-nez v12, :cond_2

    .line 102
    nop

    .line 103
    move-wide v7, v5

    goto :goto_2

    :cond_2
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    :goto_2
    move-wide v10, v7

    .line 106
    .local v10, "directoryId":J
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    sget-object v7, Landroid/provider/ContactsContract$Contacts;->ENTERPRISE_CONTACT_LOOKUP_PREFIX:Ljava/lang/String;

    .line 107
    invoke-virtual {v15, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 109
    move-wide v5, v10

    move-object/from16 v23, v12

    goto/16 :goto_3

    .line 112
    :cond_3
    invoke-static {v13, v14}, Landroid/provider/ContactsContract$Contacts;->isEnterpriseContactId(J)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 115
    invoke-static {v10, v11}, Landroid/provider/ContactsContract$Directory;->isEnterpriseDirectoryId(J)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 120
    const-class v3, Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v9, p0

    invoke-virtual {v9, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 121
    .local v3, "dpm":Landroid/app/admin/DevicePolicyManager;
    sget-object v7, Landroid/provider/ContactsContract$Contacts;->ENTERPRISE_CONTACT_LOOKUP_PREFIX:Ljava/lang/String;

    .line 122
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    .line 121
    invoke-virtual {v15, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 123
    .local v16, "actualLookupKey":Ljava/lang/String;
    sget-wide v7, Landroid/provider/ContactsContract$Contacts;->ENTERPRISE_CONTACT_ID_BASE:J

    sub-long v17, v13, v7

    .line 125
    .local v17, "actualContactId":J
    sub-long v19, v10, v5

    .line 128
    .local v19, "actualDirectoryId":J
    move-object v5, v3

    move-object/from16 v6, v16

    move-wide/from16 v7, v17

    move v9, v2

    move-wide/from16 v21, v10

    move-wide/from16 v10, v19

    .end local v10    # "directoryId":J
    .local v21, "directoryId":J
    move-object/from16 v23, v12

    move-object/from16 v12, p1

    .end local v12    # "directoryIdStr":Ljava/lang/String;
    .local v23, "directoryIdStr":Ljava/lang/String;
    invoke-virtual/range {v5 .. v12}, Landroid/app/admin/DevicePolicyManager;->startManagedQuickContact(Ljava/lang/String;JZJLandroid/content/Intent;)V

    .line 130
    return v4

    .line 116
    .end local v3    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v16    # "actualLookupKey":Ljava/lang/String;
    .end local v17    # "actualContactId":J
    .end local v19    # "actualDirectoryId":J
    .end local v21    # "directoryId":J
    .end local v23    # "directoryIdStr":Ljava/lang/String;
    .restart local v10    # "directoryId":J
    .restart local v12    # "directoryIdStr":Ljava/lang/String;
    :cond_4
    move-wide/from16 v21, v10

    move-object/from16 v23, v12

    .end local v10    # "directoryId":J
    .end local v12    # "directoryIdStr":Ljava/lang/String;
    .restart local v21    # "directoryId":J
    .restart local v23    # "directoryIdStr":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid enterprise directory id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v5, v21

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .end local v21    # "directoryId":J
    .local v5, "directoryId":J
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 113
    .end local v5    # "directoryId":J
    .end local v23    # "directoryIdStr":Ljava/lang/String;
    .restart local v10    # "directoryId":J
    .restart local v12    # "directoryIdStr":Ljava/lang/String;
    :cond_5
    move-wide v5, v10

    move-object/from16 v23, v12

    .end local v10    # "directoryId":J
    .end local v12    # "directoryIdStr":Ljava/lang/String;
    .restart local v5    # "directoryId":J
    .restart local v23    # "directoryIdStr":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid enterprise contact id: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 109
    .end local v5    # "directoryId":J
    .end local v23    # "directoryIdStr":Ljava/lang/String;
    .restart local v10    # "directoryId":J
    .restart local v12    # "directoryIdStr":Ljava/lang/String;
    :cond_6
    move-wide v5, v10

    move-object/from16 v23, v12

    .end local v10    # "directoryId":J
    .end local v12    # "directoryIdStr":Ljava/lang/String;
    .restart local v5    # "directoryId":J
    .restart local v23    # "directoryIdStr":Ljava/lang/String;
    :goto_3
    return v3
.end method

.method public static startQuickContactWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 58
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 60
    .local v0, "uri":Landroid/net/Uri;
    sget-object v1, Landroid/provider/ContactsInternal;->sContactsUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 61
    .local v1, "match":I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 64
    :pswitch_0
    invoke-static {p0, p1}, Landroid/provider/ContactsInternal;->maybeStartManagedQuickContact(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    return-void

    .line 71
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-static {p0, p1, v2}, Landroid/provider/ContactsInternal;->startQuickContactWithErrorToastForUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 72
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static startQuickContactWithErrorToastForUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 77
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const v1, 0x1040567

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 80
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 82
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :goto_0
    return-void
.end method
