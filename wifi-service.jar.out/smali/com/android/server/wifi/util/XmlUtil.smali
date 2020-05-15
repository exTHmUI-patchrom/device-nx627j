.class public Lcom/android/server/wifi/util/XmlUtil;
.super Ljava/lang/Object;
.source "XmlUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/util/XmlUtil$WifiEnterpriseConfigXmlUtil;,
        Lcom/android/server/wifi/util/XmlUtil$NetworkSelectionStatusXmlUtil;,
        Lcom/android/server/wifi/util/XmlUtil$IpConfigurationXmlUtil;,
        Lcom/android/server/wifi/util/XmlUtil$WifiConfigurationXmlUtil;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiXmlUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static gotoDocumentStart(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 0
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "headerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    invoke-static {p0, p1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method private static gotoEndTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 92
    .local v0, "type":I
    :goto_0
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 93
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 95
    :cond_0
    return-void
.end method

.method public static gotoNextSectionOrEnd(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;I)Z
    .locals 2
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "headerName"    # [Ljava/lang/String;
    .param p2, "outerDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    invoke-static {p0, p2}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 126
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v1

    .line 127
    const/4 v0, 0x1

    return v0

    .line 129
    :cond_0
    return v1
.end method

.method public static gotoNextSectionWithName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)V
    .locals 3
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "expectedName"    # Ljava/lang/String;
    .param p2, "outerDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    invoke-static {p0, p1, p2}, Lcom/android/server/wifi/util/XmlUtil;->gotoNextSectionWithNameOrEnd(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    return-void

    .line 177
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Section not found. Expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static gotoNextSectionWithNameOrEnd(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Z
    .locals 4
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "expectedName"    # Ljava/lang/String;
    .param p2, "outerDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    .line 150
    .local v1, "headerName":[Ljava/lang/String;
    invoke-static {p0, v1, p2}, Lcom/android/server/wifi/util/XmlUtil;->gotoNextSectionOrEnd(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 151
    aget-object v2, v1, v3

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 152
    return v0

    .line 154
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Next section name does not match expected name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_1
    return v3
.end method

.method private static gotoStartTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 79
    .local v0, "type":I
    :goto_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 80
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 82
    :cond_0
    return-void
.end method

.method public static isNextSectionEnd(Lorg/xmlpull/v1/XmlPullParser;I)Z
    .locals 1
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "sectionDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    invoke-static {p0, p1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static readCurrentValue(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "valueName"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    invoke-static {p0, p1}, Lcom/android/internal/util/XmlUtils;->readValueXml(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 213
    .local v0, "value":Ljava/lang/Object;
    invoke-static {p0}, Lcom/android/server/wifi/util/XmlUtil;->gotoEndTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 214
    return-object v0
.end method

.method public static readNextValueWithName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "expectedName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 231
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 232
    .local v0, "valueName":[Ljava/lang/String;
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 233
    invoke-static {p0, v0}, Lcom/android/server/wifi/util/XmlUtil;->readCurrentValue(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 234
    .local v1, "value":Ljava/lang/Object;
    const/4 v2, 0x0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 235
    return-object v1

    .line 237
    :cond_0
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Value not found. Expected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", but got: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v0, v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static writeDocumentEnd(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .locals 1
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "headerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 262
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 263
    return-void
.end method

.method public static writeDocumentStart(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .locals 2
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "headerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 250
    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 251
    return-void
.end method

.method public static writeNextSectionEnd(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .locals 1
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "headerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 285
    return-void
.end method

.method public static writeNextSectionStart(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .locals 1
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "headerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 273
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 274
    return-void
.end method

.method public static writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 296
    invoke-static {p2, p1, p0}, Lcom/android/internal/util/XmlUtils;->writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 297
    return-void
.end method
