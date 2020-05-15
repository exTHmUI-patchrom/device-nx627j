.class public Lcom/android/internal/telephony/test/TestConferenceEventPackageParser;
.super Ljava/lang/Object;
.source "TestConferenceEventPackageParser.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TestConferenceEventPackageParser"

.field private static final PARTICIPANT_TAG:Ljava/lang/String; = "participant"


# instance fields
.field private mInputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/android/internal/telephony/test/TestConferenceEventPackageParser;->mInputStream:Ljava/io/InputStream;

    .line 77
    return-void
.end method

.method private parseParticipant(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/Bundle;
    .locals 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 127
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 129
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, ""

    .line 130
    .local v1, "user":Ljava/lang/String;
    const-string v2, ""

    .line 131
    .local v2, "displayText":Ljava/lang/String;
    const-string v3, ""

    .line 132
    .local v3, "endpoint":Ljava/lang/String;
    const-string v4, ""

    .line 134
    .local v4, "status":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    .line 135
    .local v5, "outerDepth":I
    :cond_0
    :goto_0
    invoke-static {p1, v5}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 136
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "user"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 137
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 138
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 139
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "display-text"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 140
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 141
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 142
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "endpoint"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 143
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 144
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 145
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "status"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 146
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 147
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 151
    :cond_4
    const-string v6, "TestConferenceEventPackageParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "User: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const-string v6, "TestConferenceEventPackageParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DisplayText: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const-string v6, "TestConferenceEventPackageParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Endpoint: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const-string v6, "TestConferenceEventPackageParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Status: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const-string v6, "user"

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v6, "display-text"

    invoke-virtual {v0, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v6, "endpoint"

    invoke-virtual {v0, v6, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v6, "status"

    invoke-virtual {v0, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-object v0
.end method


# virtual methods
.method public parse()Landroid/telephony/ims/ImsConferenceState;
    .locals 7

    .line 87
    new-instance v0, Landroid/telephony/ims/ImsConferenceState;

    invoke-direct {v0}, Landroid/telephony/ims/ImsConferenceState;-><init>()V

    .line 91
    .local v0, "conferenceState":Landroid/telephony/ims/ImsConferenceState;
    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 92
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    iget-object v3, p0, Lcom/android/internal/telephony/test/TestConferenceEventPackageParser;->mInputStream:Ljava/io/InputStream;

    invoke-interface {v2, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 93
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 95
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 96
    .local v3, "outerDepth":I
    :cond_0
    :goto_0
    invoke-static {v2, v3}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 97
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "participant"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 98
    const-string v4, "TestConferenceEventPackageParser"

    const-string v5, "Found participant."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/test/TestConferenceEventPackageParser;->parseParticipant(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/Bundle;

    move-result-object v4

    .line 100
    .local v4, "participant":Landroid/os/Bundle;
    iget-object v5, v0, Landroid/telephony/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    const-string v6, "endpoint"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    .end local v4    # "participant":Landroid/os/Bundle;
    goto :goto_0

    .line 109
    .end local v3    # "outerDepth":I
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/test/TestConferenceEventPackageParser;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 113
    nop

    .line 112
    move-object v1, v2

    .line 116
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    return-object v0

    .line 110
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v3

    .line 111
    .end local v0    # "conferenceState":Landroid/telephony/ims/ImsConferenceState;
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local p0    # "this":Lcom/android/internal/telephony/test/TestConferenceEventPackageParser;
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "TestConferenceEventPackageParser"

    const-string v5, "Failed to close test conference event package InputStream"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    .end local v3    # "e":Ljava/io/IOException;
    :goto_1
    return-object v1

    .line 108
    .restart local v0    # "conferenceState":Landroid/telephony/ims/ImsConferenceState;
    .restart local p0    # "this":Lcom/android/internal/telephony/test/TestConferenceEventPackageParser;
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 104
    :catch_1
    move-exception v2

    .line 105
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "TestConferenceEventPackageParser"

    const-string v4, "Failed to read test conference event package from XML file"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 106
    nop

    .line 109
    :try_start_3
    iget-object v3, p0, Lcom/android/internal/telephony/test/TestConferenceEventPackageParser;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 113
    nop

    .line 106
    return-object v1

    .line 108
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    nop

    .line 109
    :try_start_4
    iget-object v3, p0, Lcom/android/internal/telephony/test/TestConferenceEventPackageParser;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 113
    nop

    .line 112
    throw v2

    .line 110
    :catch_2
    move-exception v2

    .line 111
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "TestConferenceEventPackageParser"

    const-string v4, "Failed to close test conference event package InputStream"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
