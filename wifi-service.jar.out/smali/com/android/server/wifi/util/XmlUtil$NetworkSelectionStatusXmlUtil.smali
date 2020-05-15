.class public Lcom/android/server/wifi/util/XmlUtil$NetworkSelectionStatusXmlUtil;
.super Ljava/lang/Object;
.source "XmlUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/util/XmlUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkSelectionStatusXmlUtil"
.end annotation


# static fields
.field public static final XML_TAG_CONNECT_CHOICE:Ljava/lang/String; = "ConnectChoice"

.field public static final XML_TAG_CONNECT_CHOICE_TIMESTAMP:Ljava/lang/String; = "ConnectChoiceTimeStamp"

.field public static final XML_TAG_DISABLE_REASON:Ljava/lang/String; = "DisableReason"

.field public static final XML_TAG_HAS_EVER_CONNECTED:Ljava/lang/String; = "HasEverConnected"

.field public static final XML_TAG_SELECTION_STATUS:Ljava/lang/String; = "SelectionStatus"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 924
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseFromXml(Lorg/xmlpull/v1/XmlPullParser;I)Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    .locals 10
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "outerTagDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 966
    new-instance v0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;-><init>()V

    .line 967
    .local v0, "selectionStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    const-string v1, ""

    .line 968
    .local v1, "statusString":Ljava/lang/String;
    const-string v2, ""

    .line 971
    .local v2, "disableReasonString":Ljava/lang/String;
    :goto_0
    invoke-static {p0, p1}, Lcom/android/server/wifi/util/XmlUtil;->isNextSectionEnd(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-nez v3, :cond_2

    .line 972
    new-array v3, v5, [Ljava/lang/String;

    .line 973
    .local v3, "valueName":[Ljava/lang/String;
    invoke-static {p0, v3}, Lcom/android/server/wifi/util/XmlUtil;->readCurrentValue(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 974
    .local v6, "value":Ljava/lang/Object;
    const/4 v7, 0x0

    aget-object v8, v3, v7

    if-eqz v8, :cond_1

    .line 977
    aget-object v8, v3, v7

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v5, "SelectionStatus"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, v7

    goto :goto_1

    :sswitch_1
    const-string v9, "DisableReason"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v4, v5

    goto :goto_1

    :sswitch_2
    const-string v5, "ConnectChoice"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x2

    goto :goto_1

    :sswitch_3
    const-string v5, "ConnectChoiceTimeStamp"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x3

    goto :goto_1

    :sswitch_4
    const-string v5, "HasEverConnected"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x4

    :cond_0
    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 994
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown value name found: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v3, v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 991
    :pswitch_0
    move-object v4, v6

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setHasEverConnected(Z)V

    .line 992
    goto :goto_2

    .line 988
    :pswitch_1
    move-object v4, v6

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setConnectChoiceTimestamp(J)V

    .line 989
    goto :goto_2

    .line 985
    :pswitch_2
    move-object v4, v6

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setConnectChoice(Ljava/lang/String;)V

    .line 986
    goto :goto_2

    .line 982
    :pswitch_3
    move-object v2, v6

    check-cast v2, Ljava/lang/String;

    .line 983
    goto :goto_2

    .line 979
    :pswitch_4
    move-object v1, v6

    check-cast v1, Ljava/lang/String;

    .line 980
    nop

    .line 997
    .end local v3    # "valueName":[Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/Object;
    :goto_2
    goto/16 :goto_0

    .line 975
    .restart local v3    # "valueName":[Ljava/lang/String;
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_1
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v5, "Missing value name"

    invoke-direct {v4, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1000
    .end local v3    # "valueName":[Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/Object;
    :cond_2
    sget-object v3, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->QUALITY_NETWORK_SELECTION_STATUS:[Ljava/lang/String;

    .line 1001
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 1002
    invoke-interface {v3, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 1003
    .local v3, "status":I
    sget-object v6, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->QUALITY_NETWORK_SELECTION_DISABLE_REASON:[Ljava/lang/String;

    .line 1004
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 1005
    invoke-interface {v6, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 1010
    .local v6, "disableReason":I
    if-eq v3, v4, :cond_3

    if-eq v6, v4, :cond_3

    if-ne v3, v5, :cond_4

    .line 1012
    :cond_3
    const/4 v3, 0x0

    .line 1013
    const/4 v6, 0x0

    .line 1015
    :cond_4
    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionStatus(I)V

    .line 1016
    invoke-virtual {v0, v6}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionDisableReason(I)V

    .line 1017
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5b26d0cf -> :sswitch_4
        -0x30ff85d5 -> :sswitch_3
        -0x3031e4f5 -> :sswitch_2
        -0x513fcd4 -> :sswitch_1
        0x568d8c7e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static writeToXml(Lorg/xmlpull/v1/XmlSerializer;Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;)V
    .locals 3
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "selectionStatus"    # Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 944
    const-string v0, "SelectionStatus"

    .line 945
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkStatusString()Ljava/lang/String;

    move-result-object v1

    .line 944
    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 946
    const-string v0, "DisableReason"

    .line 947
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkDisableReasonString()Ljava/lang/String;

    move-result-object v1

    .line 946
    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 948
    const-string v0, "ConnectChoice"

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 949
    const-string v0, "ConnectChoiceTimeStamp"

    .line 951
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoiceTimestamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 949
    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 952
    const-string v0, "HasEverConnected"

    .line 953
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getHasEverConnected()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 952
    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 954
    return-void
.end method
