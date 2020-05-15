.class public Lcom/android/server/wifi/util/XmlUtil$WifiEnterpriseConfigXmlUtil;
.super Ljava/lang/Object;
.source "XmlUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/util/XmlUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WifiEnterpriseConfigXmlUtil"
.end annotation


# static fields
.field public static final XML_TAG_ALT_SUBJECT_MATCH:Ljava/lang/String; = "AltSubjectMatch"

.field public static final XML_TAG_ANON_IDENTITY:Ljava/lang/String; = "AnonIdentity"

.field public static final XML_TAG_CA_CERT:Ljava/lang/String; = "CaCert"

.field public static final XML_TAG_CA_PATH:Ljava/lang/String; = "CaPath"

.field public static final XML_TAG_CLIENT_CERT:Ljava/lang/String; = "ClientCert"

.field public static final XML_TAG_DOM_SUFFIX_MATCH:Ljava/lang/String; = "DomSuffixMatch"

.field public static final XML_TAG_EAP_METHOD:Ljava/lang/String; = "EapMethod"

.field public static final XML_TAG_ENGINE:Ljava/lang/String; = "Engine"

.field public static final XML_TAG_ENGINE_ID:Ljava/lang/String; = "EngineId"

.field public static final XML_TAG_IDENTITY:Ljava/lang/String; = "Identity"

.field public static final XML_TAG_PASSWORD:Ljava/lang/String; = "Password"

.field public static final XML_TAG_PHASE2_METHOD:Ljava/lang/String; = "Phase2Method"

.field public static final XML_TAG_PLMN:Ljava/lang/String; = "PLMN"

.field public static final XML_TAG_PRIVATE_KEY_ID:Ljava/lang/String; = "PrivateKeyId"

.field public static final XML_TAG_REALM:Ljava/lang/String; = "Realm"

.field public static final XML_TAG_SIMNUM:Ljava/lang/String; = "SimNum"

.field public static final XML_TAG_SUBJECT_MATCH:Ljava/lang/String; = "SubjectMatch"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1025
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseFromXml(Lorg/xmlpull/v1/XmlPullParser;I)Landroid/net/wifi/WifiEnterpriseConfig;
    .locals 8
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "outerTagDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1097
    new-instance v0, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v0}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    .line 1100
    .local v0, "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    :goto_0
    invoke-static {p0, p1}, Lcom/android/server/wifi/util/XmlUtil;->isNextSectionEnd(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1101
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    .line 1102
    .local v2, "valueName":[Ljava/lang/String;
    invoke-static {p0, v2}, Lcom/android/server/wifi/util/XmlUtil;->readCurrentValue(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1103
    .local v3, "value":Ljava/lang/Object;
    const/4 v4, 0x0

    aget-object v5, v2, v4

    if-eqz v5, :cond_2

    .line 1106
    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, -0x1

    sparse-switch v6, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v1, "Engine"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto/16 :goto_2

    :sswitch_1
    const-string v1, "CaPath"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xb

    goto/16 :goto_2

    :sswitch_2
    const-string v1, "CaCert"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto/16 :goto_2

    :sswitch_3
    const-string v1, "EngineId"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto/16 :goto_2

    :sswitch_4
    const-string v1, "Password"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto/16 :goto_2

    :sswitch_5
    const-string v1, "PrivateKeyId"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto/16 :goto_2

    :sswitch_6
    const-string v1, "Realm"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xf

    goto/16 :goto_2

    :sswitch_7
    const-string v1, "EapMethod"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xc

    goto/16 :goto_2

    :sswitch_8
    const-string v1, "PLMN"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xe

    goto :goto_2

    :sswitch_9
    const-string v1, "Identity"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_2

    :sswitch_a
    const-string v1, "Phase2Method"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xd

    goto :goto_2

    :sswitch_b
    const-string v1, "AltSubjectMatch"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x9

    goto :goto_2

    :sswitch_c
    const-string v1, "ClientCert"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_2

    :sswitch_d
    const-string v1, "SubjectMatch"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_2

    :sswitch_e
    const-string v1, "DomSuffixMatch"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    goto :goto_2

    :sswitch_f
    const-string v1, "SimNum"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x10

    goto :goto_2

    :sswitch_10
    const-string v6, "AnonIdentity"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_2

    :cond_0
    :goto_1
    move v1, v7

    :goto_2
    packed-switch v1, :pswitch_data_0

    .line 1179
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown value name found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v2, v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1170
    :pswitch_0
    :try_start_0
    move-object v1, v3

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v7, v1

    .line 1173
    .local v7, "sim_num":I
    goto :goto_3

    .line 1171
    .end local v7    # "sim_num":I
    :catch_0
    move-exception v1

    .line 1172
    .local v1, "e":Ljava/lang/NumberFormatException;
    nop

    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .restart local v7    # "sim_num":I
    :goto_3
    move v1, v7

    .line 1174
    .end local v7    # "sim_num":I
    .local v1, "sim_num":I
    if-lez v1, :cond_1

    .line 1175
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setSimNum(I)V

    goto/16 :goto_4

    .line 1165
    .end local v1    # "sim_num":I
    :pswitch_1
    move-object v1, v3

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setRealm(Ljava/lang/String;)V

    .line 1166
    goto/16 :goto_4

    .line 1162
    :pswitch_2
    move-object v1, v3

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setPlmn(Ljava/lang/String;)V

    .line 1163
    goto/16 :goto_4

    .line 1159
    :pswitch_3
    move-object v1, v3

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 1160
    goto/16 :goto_4

    .line 1156
    :pswitch_4
    move-object v1, v3

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 1157
    goto/16 :goto_4

    .line 1152
    :pswitch_5
    const-string v1, "ca_path"

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    goto :goto_4

    .line 1148
    :pswitch_6
    const-string v1, "domain_suffix_match"

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    goto :goto_4

    .line 1144
    :pswitch_7
    const-string v1, "altsubject_match"

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    goto :goto_4

    .line 1140
    :pswitch_8
    const-string v1, "key_id"

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    goto :goto_4

    .line 1136
    :pswitch_9
    const-string v1, "engine_id"

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    goto :goto_4

    .line 1132
    :pswitch_a
    const-string v1, "engine"

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    goto :goto_4

    .line 1128
    :pswitch_b
    const-string v1, "subject_match"

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    goto :goto_4

    .line 1124
    :pswitch_c
    const-string v1, "ca_cert"

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    goto :goto_4

    .line 1120
    :pswitch_d
    const-string v1, "client_cert"

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    goto :goto_4

    .line 1116
    :pswitch_e
    const-string v1, "password"

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    goto :goto_4

    .line 1112
    :pswitch_f
    const-string v1, "anonymous_identity"

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    goto :goto_4

    .line 1108
    :pswitch_10
    const-string v1, "identity"

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    nop

    .line 1182
    .end local v2    # "valueName":[Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_1
    :goto_4
    goto/16 :goto_0

    .line 1104
    .restart local v2    # "valueName":[Ljava/lang/String;
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_2
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "Missing value name"

    invoke-direct {v1, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1183
    .end local v2    # "valueName":[Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_3
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x749da036 -> :sswitch_10
        -0x6c6360b1 -> :sswitch_f
        -0x6951b18e -> :sswitch_e
        -0x5131bbe7 -> :sswitch_d
        -0x47800f51 -> :sswitch_c
        -0x238bbfde -> :sswitch_b
        -0x1708f608 -> :sswitch_a
        -0x43d2b22 -> :sswitch_9
        0x25849d -> :sswitch_8
        0xa89535 -> :sswitch_7
        0x4b2ea6f -> :sswitch_6
        0x4454c437 -> :sswitch_5
        0x4c641ebb -> :sswitch_4
        0x705cdf1d -> :sswitch_3
        0x77cb97c2 -> :sswitch_2
        0x77d171c3 -> :sswitch_1
        0x7bfce662 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static writeToXml(Lorg/xmlpull/v1/XmlSerializer;Landroid/net/wifi/WifiEnterpriseConfig;)V
    .locals 2
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "enterpriseConfig"    # Landroid/net/wifi/WifiEnterpriseConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1057
    const-string v0, "Identity"

    const-string v1, "identity"

    .line 1058
    invoke-virtual {p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1057
    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1059
    const-string v0, "AnonIdentity"

    const-string v1, "anonymous_identity"

    .line 1060
    invoke-virtual {p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1059
    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1061
    const-string v0, "Password"

    const-string v1, "password"

    .line 1062
    invoke-virtual {p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1061
    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1063
    const-string v0, "ClientCert"

    const-string v1, "client_cert"

    .line 1064
    invoke-virtual {p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1063
    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1065
    const-string v0, "CaCert"

    const-string v1, "ca_cert"

    .line 1066
    invoke-virtual {p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1065
    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1067
    const-string v0, "SubjectMatch"

    const-string v1, "subject_match"

    .line 1068
    invoke-virtual {p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1067
    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1069
    const-string v0, "Engine"

    const-string v1, "engine"

    .line 1070
    invoke-virtual {p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1069
    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1071
    const-string v0, "EngineId"

    const-string v1, "engine_id"

    .line 1072
    invoke-virtual {p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1071
    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1073
    const-string v0, "PrivateKeyId"

    const-string v1, "key_id"

    .line 1074
    invoke-virtual {p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1073
    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1075
    const-string v0, "AltSubjectMatch"

    const-string v1, "altsubject_match"

    .line 1076
    invoke-virtual {p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1075
    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1077
    const-string v0, "DomSuffixMatch"

    const-string v1, "domain_suffix_match"

    .line 1078
    invoke-virtual {p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1077
    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1079
    const-string v0, "CaPath"

    const-string v1, "ca_path"

    .line 1080
    invoke-virtual {p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1079
    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1081
    const-string v0, "EapMethod"

    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1082
    const-string v0, "Phase2Method"

    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1083
    const-string v0, "PLMN"

    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getPlmn()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1084
    const-string v0, "Realm"

    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getRealm()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1085
    const-string v0, "SimNum"

    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getSimNum()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1086
    return-void
.end method
