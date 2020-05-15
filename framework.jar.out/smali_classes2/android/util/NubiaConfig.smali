.class public Landroid/util/NubiaConfig;
.super Ljava/lang/Object;
.source "NubiaConfig.java"


# static fields
.field static final TAG:Ljava/lang/String; = "NubiaConfig"

.field private static final mBigFeatures:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mSubFeatures:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-string/jumbo v0, "nubia_runtime"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 34
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/util/NubiaConfig;->mSubFeatures:Landroid/util/ArrayMap;

    .line 35
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/util/NubiaConfig;->mBigFeatures:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSubValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "featureName"    # Ljava/lang/String;
    .param p1, "subFeatureName"    # Ljava/lang/String;

    .line 38
    sget-object v0, Landroid/util/NubiaConfig;->mSubFeatures:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    sget-object v0, Landroid/util/NubiaConfig;->mSubFeatures:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 40
    .local v0, "values":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 42
    .end local v0    # "values":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "featureName"    # Ljava/lang/String;

    .line 46
    sget-object v0, Landroid/util/NubiaConfig;->mBigFeatures:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static loadConfig()V
    .locals 1

    .line 54
    invoke-static {}, Landroid/util/NubiaConfig;->nativeGetConfigXML()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "content":Ljava/lang/String;
    invoke-static {v0}, Landroid/util/NubiaConfig;->readNubiaConfigFromStr(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method private static native nativeGetConfigXML()Ljava/lang/String;
.end method

.method private static nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 198
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v1, v0

    .local v1, "type":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    if-eq v1, v0, :cond_0

    .end local v1    # "type":I
    goto :goto_0

    .line 202
    .restart local v1    # "type":I
    :cond_0
    return-void
.end method

.method private static readConfigs(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, "tagName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 103
    .local v1, "value":Ljava/lang/String;
    const/4 v2, 0x1

    move-object v3, v1

    move-object v1, v0

    move v0, v2

    .line 105
    .local v0, "needReadNextElement":Z
    .local v1, "tagName":Ljava/lang/String;
    .local v3, "value":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    .line 106
    invoke-static {p0}, Landroid/util/NubiaConfig;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 109
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    if-ne v4, v2, :cond_1

    .line 110
    nop

    .line 145
    return-void

    .line 113
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 116
    const-string v4, "feature"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 117
    const-string/jumbo v4, "name"

    const/4 v5, 0x0

    invoke-interface {p0, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 118
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 120
    const-string/jumbo v6, "value"

    invoke-interface {p0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 121
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 123
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 131
    :cond_2
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 132
    .local v5, "featureSet":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v6, Landroid/util/NubiaConfig;->mBigFeatures:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v6, Landroid/util/NubiaConfig;->mSubFeatures:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-static {p0, v5, v4}, Landroid/util/NubiaConfig;->readSubConfigs(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/ArrayMap;Ljava/lang/String;)V

    .line 136
    const/4 v0, 0x0

    .line 137
    goto :goto_0

    .line 124
    .end local v5    # "featureSet":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    :goto_1
    const-string v5, "NubiaConfig"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<features> han empty data,  at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 124
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-static {p0}, Landroid/util/NubiaConfig;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 127
    goto :goto_0

    .line 139
    .end local v4    # "name":Ljava/lang/String;
    :cond_4
    invoke-static {p0}, Landroid/util/NubiaConfig;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 141
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static readNubiaConfigFromStr(Ljava/lang/String;)V
    .locals 7
    .param p0, "fileContent"    # Ljava/lang/String;

    .line 150
    const/4 v0, 0x0

    .line 153
    .local v0, "permReader":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v0, v1

    .line 154
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 155
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string/jumbo v2, "utf-8"

    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 158
    :goto_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .line 158
    .local v3, "type":I
    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    const/4 v2, 0x1

    if-eq v3, v2, :cond_0

    .line 158
    .end local v3    # "type":I
    goto :goto_0

    .line 163
    .restart local v3    # "type":I
    :cond_0
    if-ne v3, v4, :cond_2

    .line 166
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 167
    .local v2, "tagName":Ljava/lang/String;
    const-string v4, "config"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 171
    invoke-static {v1}, Landroid/util/NubiaConfig;->readConfigs(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2    # "tagName":Ljava/lang/String;
    .end local v3    # "type":I
    nop

    .line 177
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 179
    :goto_1
    goto :goto_2

    .line 178
    :catch_0
    move-exception v1

    goto :goto_1

    .line 168
    .restart local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v2    # "tagName":Ljava/lang/String;
    .restart local v3    # "type":I
    :cond_1
    :try_start_2
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected start tag in nubiaconfig: found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", expected \'configs\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 164
    .end local v2    # "tagName":Ljava/lang/String;
    :cond_2
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "No start tag found in nubiaconfig"

    invoke-direct {v2, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 175
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "type":I
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 172
    :catch_1
    move-exception v1

    .line 173
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v2, "NubiaConfig"

    const-string v3, "Got exception parsing nubia-config."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 175
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_3

    .line 177
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 182
    :cond_3
    :goto_2
    return-void

    .line 175
    :goto_3
    if-eqz v0, :cond_4

    .line 177
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 179
    goto :goto_4

    .line 178
    :catch_2
    move-exception v2

    .line 179
    :cond_4
    :goto_4
    throw v1
.end method

.method private static readSubConfigs(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/ArrayMap;Ljava/lang/String;)V
    .locals 7
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "bigFeature"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 67
    .local p1, "featureSet":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 68
    .local v0, "tagName":Ljava/lang/String;
    const/4 v1, 0x0

    move-object v2, v0

    move-object v0, v1

    .line 71
    .local v0, "value":Ljava/lang/String;
    .local v2, "tagName":Ljava/lang/String;
    :goto_0
    invoke-static {p0}, Landroid/util/NubiaConfig;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 72
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 74
    const-string v3, "feature"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    goto :goto_2

    .line 76
    :cond_0
    const-string/jumbo v3, "subfeature"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 77
    const-string/jumbo v3, "name"

    invoke-interface {p0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 80
    const-string/jumbo v4, "value"

    invoke-interface {p0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 90
    :cond_1
    invoke-virtual {p1, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    goto :goto_0

    .line 84
    :cond_2
    :goto_1
    const-string v4, "NubiaConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<feature> han empty data, name or value in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 84
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-static {p0}, Landroid/util/NubiaConfig;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 87
    goto :goto_0

    .line 93
    .end local v3    # "name":Ljava/lang/String;
    :cond_3
    invoke-static {p0}, Landroid/util/NubiaConfig;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 94
    goto :goto_0

    .line 74
    :cond_4
    :goto_2
    return-void
.end method

.method private static skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 186
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 188
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    const/4 v1, 0x3

    if-ne v2, v1, :cond_0

    .line 189
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    if-le v1, v0, :cond_1

    .end local v2    # "type":I
    goto :goto_0

    .line 193
    .restart local v2    # "type":I
    :cond_1
    return-void
.end method
