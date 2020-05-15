.class public Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData;
.super Ljava/lang/Object;
.source "PasspointConfigStoreData.java"

# interfaces
.implements Lcom/android/server/wifi/WifiConfigStore$StoreData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData$DataSource;
    }
.end annotation


# static fields
.field private static final XML_TAG_CA_CERTIFICATE_ALIAS:Ljava/lang/String; = "CaCertificateAlias"

.field private static final XML_TAG_CLIENT_CERTIFICATE_ALIAS:Ljava/lang/String; = "ClientCertificateAlias"

.field private static final XML_TAG_CLIENT_PRIVATE_KEY_ALIAS:Ljava/lang/String; = "ClientPrivateKeyAlias"

.field private static final XML_TAG_CREATOR_UID:Ljava/lang/String; = "CreatorUID"

.field private static final XML_TAG_HAS_EVER_CONNECTED:Ljava/lang/String; = "HasEverConnected"

.field private static final XML_TAG_PROVIDER_ID:Ljava/lang/String; = "ProviderID"

.field private static final XML_TAG_PROVIDER_INDEX:Ljava/lang/String; = "ProviderIndex"

.field private static final XML_TAG_SECTION_HEADER_PASSPOINT_CONFIGURATION:Ljava/lang/String; = "Configuration"

.field private static final XML_TAG_SECTION_HEADER_PASSPOINT_CONFIG_DATA:Ljava/lang/String; = "PasspointConfigData"

.field private static final XML_TAG_SECTION_HEADER_PASSPOINT_PROVIDER:Ljava/lang/String; = "Provider"

.field private static final XML_TAG_SECTION_HEADER_PASSPOINT_PROVIDER_LIST:Ljava/lang/String; = "ProviderList"


# instance fields
.field private final mDataSource:Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData$DataSource;

.field private final mKeyStore:Lcom/android/server/wifi/WifiKeyStore;

.field private final mSimAccessor:Lcom/android/server/wifi/SIMAccessor;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiKeyStore;Lcom/android/server/wifi/SIMAccessor;Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData$DataSource;)V
    .locals 0
    .param p1, "keyStore"    # Lcom/android/server/wifi/WifiKeyStore;
    .param p2, "simAccessor"    # Lcom/android/server/wifi/SIMAccessor;
    .param p3, "dataSource"    # Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData$DataSource;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData;->mKeyStore:Lcom/android/server/wifi/WifiKeyStore;

    .line 111
    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData;->mSimAccessor:Lcom/android/server/wifi/SIMAccessor;

    .line 112
    iput-object p3, p0, Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData;->mDataSource:Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData$DataSource;

    .line 113
    return-void
.end method

.method private deserializeProvider(Lorg/xmlpull/v1/XmlPullParser;I)Lcom/android/server/wifi/hotspot2/PasspointProvider;
    .locals 24
    .param p1, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "outerTagDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 308
    const-wide/high16 v2, -0x8000000000000000L

    .line 309
    .local v2, "providerId":J
    const/high16 v4, -0x80000000

    .line 310
    .local v4, "creatorUid":I
    const/4 v5, 0x0

    .line 311
    .local v5, "caCertificateAlias":Ljava/lang/String;
    const/4 v6, 0x0

    .line 312
    .local v6, "clientCertificateAlias":Ljava/lang/String;
    const/4 v7, 0x0

    .line 313
    .local v7, "clientPrivateKeyAlias":Ljava/lang/String;
    const/4 v8, 0x0

    .line 314
    .local v8, "hasEverConnected":Z
    const/16 v21, 0x0

    .line 315
    .local v21, "shared":Z
    const/4 v9, 0x0

    move/from16 v22, v8

    move v8, v4

    move-wide v3, v2

    move-object v2, v9

    .line 316
    .end local v4    # "creatorUid":I
    .local v2, "config":Landroid/net/wifi/hotspot2/PasspointConfiguration;
    .local v3, "providerId":J
    .local v8, "creatorUid":I
    .local v22, "hasEverConnected":Z
    :goto_0
    invoke-static/range {p1 .. p2}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 317
    const-string v10, "name"

    invoke-interface {v1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 319
    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/String;

    .line 320
    .local v11, "name":[Ljava/lang/String;
    invoke-static {v1, v11}, Lcom/android/server/wifi/util/XmlUtil;->readCurrentValue(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 321
    .local v12, "value":Ljava/lang/Object;
    const/4 v13, 0x0

    aget-object v14, v11, v13

    const/4 v15, -0x1

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v10, "CaCertificateAlias"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x2

    goto :goto_2

    :sswitch_1
    const-string v10, "ClientCertificateAlias"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x3

    goto :goto_2

    :sswitch_2
    const-string v13, "CreatorUID"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    goto :goto_2

    :sswitch_3
    const-string v10, "HasEverConnected"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x5

    goto :goto_2

    :sswitch_4
    const-string v10, "ClientPrivateKeyAlias"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x4

    goto :goto_2

    :sswitch_5
    const-string v10, "ProviderID"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    move v10, v13

    goto :goto_2

    :cond_0
    :goto_1
    move v10, v15

    :goto_2
    packed-switch v10, :pswitch_data_0

    .end local v11    # "name":[Ljava/lang/String;
    .end local v12    # "value":Ljava/lang/Object;
    goto :goto_3

    .line 338
    .restart local v11    # "name":[Ljava/lang/String;
    .restart local v12    # "value":Ljava/lang/Object;
    :pswitch_0
    move-object v10, v12

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 341
    .end local v11    # "name":[Ljava/lang/String;
    .end local v12    # "value":Ljava/lang/Object;
    .end local v22    # "hasEverConnected":Z
    .local v10, "hasEverConnected":Z
    move/from16 v22, v10

    goto :goto_3

    .line 335
    .end local v10    # "hasEverConnected":Z
    .restart local v11    # "name":[Ljava/lang/String;
    .restart local v12    # "value":Ljava/lang/Object;
    .restart local v22    # "hasEverConnected":Z
    :pswitch_1
    move-object v7, v12

    check-cast v7, Ljava/lang/String;

    .line 336
    goto :goto_3

    .line 332
    :pswitch_2
    move-object v6, v12

    check-cast v6, Ljava/lang/String;

    .line 333
    goto :goto_3

    .line 329
    :pswitch_3
    move-object v5, v12

    check-cast v5, Ljava/lang/String;

    .line 330
    goto :goto_3

    .line 326
    :pswitch_4
    move-object v10, v12

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 327
    goto :goto_3

    .line 323
    :pswitch_5
    move-object v10, v12

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 324
    nop

    .line 341
    .end local v11    # "name":[Ljava/lang/String;
    .end local v12    # "value":Ljava/lang/Object;
    :goto_3
    goto/16 :goto_0

    .line 342
    :cond_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "Configuration"

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 347
    add-int/lit8 v10, p2, 0x1

    invoke-static {v1, v10}, Lcom/android/server/wifi/hotspot2/PasspointXmlUtils;->deserializePasspointConfiguration(Lorg/xmlpull/v1/XmlPullParser;I)Landroid/net/wifi/hotspot2/PasspointConfiguration;

    move-result-object v2

    goto/16 :goto_0

    .line 344
    :cond_2
    new-instance v9, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unexpected section under Provider: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 351
    :cond_3
    const-wide/high16 v9, -0x8000000000000000L

    cmp-long v9, v3, v9

    if-eqz v9, :cond_5

    .line 354
    if-eqz v2, :cond_4

    .line 357
    new-instance v23, Lcom/android/server/wifi/hotspot2/PasspointProvider;

    iget-object v11, v0, Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData;->mKeyStore:Lcom/android/server/wifi/WifiKeyStore;

    iget-object v12, v0, Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData;->mSimAccessor:Lcom/android/server/wifi/SIMAccessor;

    move-object/from16 v9, v23

    move-object v10, v2

    move-wide v13, v3

    move v15, v8

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move/from16 v19, v22

    move/from16 v20, v21

    invoke-direct/range {v9 .. v20}, Lcom/android/server/wifi/hotspot2/PasspointProvider;-><init>(Landroid/net/wifi/hotspot2/PasspointConfiguration;Lcom/android/server/wifi/WifiKeyStore;Lcom/android/server/wifi/SIMAccessor;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-object v23

    .line 355
    :cond_4
    new-instance v9, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v10, "Missing Passpoint configuration"

    invoke-direct {v9, v10}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 352
    :cond_5
    new-instance v9, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v10, "Missing provider ID"

    invoke-direct {v9, v10}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v9

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7cf3cd14 -> :sswitch_5
        -0x7038d997 -> :sswitch_4
        -0x5b26d0cf -> :sswitch_3
        -0x36f75b5c -> :sswitch_2
        -0x23ff46fc -> :sswitch_1
        0x2fc35b97 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private deserializeProviderList(Lorg/xmlpull/v1/XmlPullParser;I)Ljava/util/List;
    .locals 2
    .param p1, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "outerTagDepth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/server/wifi/hotspot2/PasspointProvider;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 289
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 290
    .local v0, "providerList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/PasspointProvider;>;"
    :goto_0
    const-string v1, "Provider"

    invoke-static {p1, v1, p2}, Lcom/android/server/wifi/util/XmlUtil;->gotoNextSectionWithNameOrEnd(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 292
    add-int/lit8 v1, p2, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData;->deserializeProvider(Lorg/xmlpull/v1/XmlPullParser;I)Lcom/android/server/wifi/hotspot2/PasspointProvider;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 294
    :cond_0
    return-object v0
.end method

.method private deserializeShareData(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 7
    .param p1, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "outerTagDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    :goto_0
    invoke-static {p1, p2}, Lcom/android/server/wifi/util/XmlUtil;->isNextSectionEnd(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 239
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 240
    .local v0, "valueName":[Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/android/server/wifi/util/XmlUtil;->readCurrentValue(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 241
    .local v1, "value":Ljava/lang/Object;
    const/4 v2, 0x0

    aget-object v3, v0, v2

    if-eqz v3, :cond_3

    .line 244
    aget-object v3, v0, v2

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, 0x28ae7141

    if-eq v5, v6, :cond_0

    goto :goto_1

    :cond_0
    const-string v5, "ProviderIndex"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v4, v2

    :cond_1
    :goto_1
    if-nez v4, :cond_2

    .line 246
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData;->mDataSource:Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData$DataSource;

    move-object v3, v1

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData$DataSource;->setProviderIndex(J)V

    .line 247
    nop

    .line 252
    .end local v0    # "valueName":[Ljava/lang/String;
    .end local v1    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 249
    .restart local v0    # "valueName":[Ljava/lang/String;
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_2
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown value under share store data "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v0, v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 242
    :cond_3
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "Missing value name"

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 253
    .end local v0    # "valueName":[Ljava/lang/String;
    .end local v1    # "value":Ljava/lang/Object;
    :cond_4
    return-void
.end method

.method private deserializeUserData(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 6
    .param p1, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "outerTagDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 266
    .local v0, "headerName":[Ljava/lang/String;
    :goto_0
    invoke-static {p1, v0, p2}, Lcom/android/server/wifi/util/XmlUtil;->gotoNextSectionOrEnd(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 267
    const/4 v1, 0x0

    aget-object v2, v0, v1

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0xf32e1b1

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    const-string v4, "ProviderList"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v3, v1

    :cond_1
    :goto_1
    if-nez v3, :cond_2

    .line 269
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData;->mDataSource:Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData$DataSource;

    add-int/lit8 v2, p2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData;->deserializeProviderList(Lorg/xmlpull/v1/XmlPullParser;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData$DataSource;->setProviders(Ljava/util/List;)V

    .line 270
    goto :goto_0

    .line 272
    :cond_2
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown Passpoint user store data "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v0, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 276
    :cond_3
    return-void
.end method

.method private resetShareData()V
    .locals 3

    .line 366
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData;->mDataSource:Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData$DataSource;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData$DataSource;->setProviderIndex(J)V

    .line 367
    return-void
.end method

.method private resetUserData()V
    .locals 2

    .line 373
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData;->mDataSource:Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData$DataSource;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData$DataSource;->setProviders(Ljava/util/List;)V

    .line 374
    return-void
.end method

.method private serializeProvider(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/wifi/hotspot2/PasspointProvider;)V
    .locals 3
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "provider"    # Lcom/android/server/wifi/hotspot2/PasspointProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    const-string v0, "Provider"

    invoke-static {p1, v0}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionStart(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 211
    const-string v0, "ProviderID"

    invoke-virtual {p2}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->getProviderId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 212
    const-string v0, "CreatorUID"

    invoke-virtual {p2}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->getCreatorUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 213
    const-string v0, "CaCertificateAlias"

    .line 214
    invoke-virtual {p2}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v1

    .line 213
    invoke-static {p1, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 215
    const-string v0, "ClientCertificateAlias"

    .line 216
    invoke-virtual {p2}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v1

    .line 215
    invoke-static {p1, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 217
    const-string v0, "ClientPrivateKeyAlias"

    .line 218
    invoke-virtual {p2}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->getClientPrivateKeyAlias()Ljava/lang/String;

    move-result-object v1

    .line 217
    invoke-static {p1, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 219
    const-string v0, "HasEverConnected"

    invoke-virtual {p2}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->getHasEverConnected()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 220
    invoke-virtual {p2}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->getConfig()Landroid/net/wifi/hotspot2/PasspointConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 221
    const-string v0, "Configuration"

    invoke-static {p1, v0}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionStart(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 222
    invoke-virtual {p2}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->getConfig()Landroid/net/wifi/hotspot2/PasspointConfiguration;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/wifi/hotspot2/PasspointXmlUtils;->serializePasspointConfiguration(Lorg/xmlpull/v1/XmlSerializer;Landroid/net/wifi/hotspot2/PasspointConfiguration;)V

    .line 223
    const-string v0, "Configuration"

    invoke-static {p1, v0}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionEnd(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 225
    :cond_0
    const-string v0, "Provider"

    invoke-static {p1, v0}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionEnd(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method private serializeProviderList(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V
    .locals 2
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/util/List<",
            "Lcom/android/server/wifi/hotspot2/PasspointProvider;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    .local p2, "providerList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/PasspointProvider;>;"
    if-nez p2, :cond_0

    .line 191
    return-void

    .line 193
    :cond_0
    const-string v0, "ProviderList"

    invoke-static {p1, v0}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionStart(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 194
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hotspot2/PasspointProvider;

    .line 195
    .local v1, "provider":Lcom/android/server/wifi/hotspot2/PasspointProvider;
    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData;->serializeProvider(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/wifi/hotspot2/PasspointProvider;)V

    .line 196
    .end local v1    # "provider":Lcom/android/server/wifi/hotspot2/PasspointProvider;
    goto :goto_0

    .line 197
    :cond_1
    const-string v0, "ProviderList"

    invoke-static {p1, v0}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionEnd(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method private serializeShareData(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    const-string v0, "ProviderIndex"

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData;->mDataSource:Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData$DataSource;

    invoke-interface {v1}, Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData$DataSource;->getProviderIndex()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 167
    return-void
.end method

.method private serializeUserData(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 1
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData;->mDataSource:Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData$DataSource;

    invoke-interface {v0}, Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData$DataSource;->getProviders()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData;->serializeProviderList(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    .line 178
    return-void
.end method


# virtual methods
.method public deserializeData(Lorg/xmlpull/v1/XmlPullParser;IZ)V
    .locals 0
    .param p1, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "outerTagDepth"    # I
    .param p3, "shared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    if-nez p1, :cond_0

    .line 130
    return-void

    .line 132
    :cond_0
    if-eqz p3, :cond_1

    .line 133
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData;->deserializeShareData(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto :goto_0

    .line 135
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData;->deserializeUserData(Lorg/xmlpull/v1/XmlPullParser;I)V

    .line 137
    :goto_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 150
    const-string v0, "PasspointConfigData"

    return-object v0
.end method

.method public resetData(Z)V
    .locals 0
    .param p1, "shared"    # Z

    .line 141
    if-eqz p1, :cond_0

    .line 142
    invoke-direct {p0}, Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData;->resetShareData()V

    goto :goto_0

    .line 144
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData;->resetUserData()V

    .line 146
    :goto_0
    return-void
.end method

.method public serializeData(Lorg/xmlpull/v1/XmlSerializer;Z)V
    .locals 0
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "shared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    if-eqz p2, :cond_0

    .line 119
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData;->serializeShareData(Lorg/xmlpull/v1/XmlSerializer;)V

    goto :goto_0

    .line 121
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData;->serializeUserData(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 123
    :goto_0
    return-void
.end method

.method public supportShareData()Z
    .locals 1

    .line 155
    const/4 v0, 0x1

    return v0
.end method
