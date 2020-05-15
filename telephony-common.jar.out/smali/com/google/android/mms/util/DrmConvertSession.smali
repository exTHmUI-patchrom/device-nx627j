.class public Lcom/google/android/mms/util/DrmConvertSession;
.super Ljava/lang/Object;
.source "DrmConvertSession.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DrmConvertSession"


# instance fields
.field private mConvertSessionId:I

.field private mDrmClient:Landroid/drm/DrmManagerClient;


# direct methods
.method private constructor <init>(Landroid/drm/DrmManagerClient;I)V
    .locals 0
    .param p1, "drmClient"    # Landroid/drm/DrmManagerClient;
    .param p2, "convertSessionId"    # I

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/android/mms/util/DrmConvertSession;->mDrmClient:Landroid/drm/DrmManagerClient;

    .line 37
    iput p2, p0, Lcom/google/android/mms/util/DrmConvertSession;->mConvertSessionId:I

    .line 38
    return-void
.end method

.method public static open(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/mms/util/DrmConvertSession;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mimeType"    # Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, "drmClient":Landroid/drm/DrmManagerClient;
    const/4 v1, -0x1

    .line 50
    .local v1, "convertSessionId":I
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 52
    :try_start_0
    new-instance v2, Landroid/drm/DrmManagerClient;

    invoke-direct {v2, p0}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v0, v2

    .line 54
    :try_start_1
    invoke-virtual {v0, p1}, Landroid/drm/DrmManagerClient;->openConvertSession(Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    move v1, v2

    .line 60
    :goto_0
    goto :goto_1

    .line 58
    :catch_0
    move-exception v2

    .line 59
    .local v2, "e":Ljava/lang/IllegalStateException;
    :try_start_2
    const-string v3, "DrmConvertSession"

    const-string v4, "Could not access Open DrmFramework."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Ljava/lang/IllegalStateException;
    goto :goto_1

    .line 55
    :catch_1
    move-exception v2

    .line 56
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "DrmConvertSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Conversion of Mimetype: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is not supported."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 64
    :catch_2
    move-exception v2

    .line 65
    .local v2, "e":Ljava/lang/IllegalStateException;
    const-string v3, "DrmConvertSession"

    const-string v4, "DrmManagerClient didn\'t initialize properly."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/lang/IllegalStateException;
    goto :goto_2

    .line 61
    :catch_3
    move-exception v2

    .line 62
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "DrmConvertSession"

    const-string v4, "DrmManagerClient instance could not be created, context is Illegal."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    nop

    .line 69
    :cond_0
    :goto_2
    if-eqz v0, :cond_2

    if-gez v1, :cond_1

    goto :goto_3

    .line 72
    :cond_1
    new-instance v2, Lcom/google/android/mms/util/DrmConvertSession;

    invoke-direct {v2, v0, v1}, Lcom/google/android/mms/util/DrmConvertSession;-><init>(Landroid/drm/DrmManagerClient;I)V

    return-object v2

    .line 70
    :cond_2
    :goto_3
    const/4 v2, 0x0

    return-object v2
.end method


# virtual methods
.method public close(Ljava/lang/String;)I
    .locals 8
    .param p1, "filename"    # Ljava/lang/String;

    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, "convertedStatus":Landroid/drm/DrmConvertedStatus;
    const/16 v1, 0x1eb

    .line 127
    .local v1, "result":I
    iget-object v2, p0, Lcom/google/android/mms/util/DrmConvertSession;->mDrmClient:Landroid/drm/DrmManagerClient;

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/google/android/mms/util/DrmConvertSession;->mConvertSessionId:I

    if-ltz v2, :cond_4

    .line 129
    :try_start_0
    iget-object v2, p0, Lcom/google/android/mms/util/DrmConvertSession;->mDrmClient:Landroid/drm/DrmManagerClient;

    iget v3, p0, Lcom/google/android/mms/util/DrmConvertSession;->mConvertSessionId:I

    invoke-virtual {v2, v3}, Landroid/drm/DrmManagerClient;->closeConvertSession(I)Landroid/drm/DrmConvertedStatus;

    move-result-object v2

    move-object v0, v2

    .line 130
    if-eqz v0, :cond_2

    iget v2, v0, Landroid/drm/DrmConvertedStatus;->statusCode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    iget-object v2, v0, Landroid/drm/DrmConvertedStatus;->convertedData:[B
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_a

    if-nez v2, :cond_0

    goto/16 :goto_4

    .line 135
    :cond_0
    const/4 v2, 0x0

    .line 137
    .local v2, "rndAccessFile":Ljava/io/RandomAccessFile;
    :try_start_1
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v3, p1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    .line 138
    iget v3, v0, Landroid/drm/DrmConvertedStatus;->offset:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 139
    iget-object v3, v0, Landroid/drm/DrmConvertedStatus;->convertedData:[B

    invoke-virtual {v2, v3}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    const/16 v1, 0xc8

    .line 154
    nop

    .line 156
    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_a

    goto/16 :goto_1

    .line 157
    :catch_0
    move-exception v3

    .line 158
    .local v3, "e":Ljava/io/IOException;
    const/16 v1, 0x1ec

    .line 159
    :try_start_3
    const-string v4, "DrmConvertSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to close File:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_a

    goto :goto_0

    .line 154
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    goto/16 :goto_2

    .line 150
    :catch_1
    move-exception v3

    .line 151
    .local v3, "e":Ljava/lang/SecurityException;
    :try_start_4
    const-string v4, "DrmConvertSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Access to File: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " was denied denied by SecurityManager."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 154
    .end local v3    # "e":Ljava/lang/SecurityException;
    if-eqz v2, :cond_3

    .line 156
    :try_start_5
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_a

    goto :goto_1

    .line 157
    :catch_2
    move-exception v3

    .line 158
    .local v3, "e":Ljava/io/IOException;
    const/16 v1, 0x1ec

    .line 159
    :try_start_6
    const-string v4, "DrmConvertSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to close File:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_a

    goto :goto_1

    .line 147
    .end local v3    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 148
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const/16 v1, 0x1ec

    .line 149
    :try_start_7
    const-string v4, "DrmConvertSession"

    const-string v5, "Could not open file in mode: rw"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 154
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    if-eqz v2, :cond_3

    .line 156
    :try_start_8
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_a

    goto :goto_1

    .line 157
    :catch_4
    move-exception v3

    .line 158
    .local v3, "e":Ljava/io/IOException;
    const/16 v1, 0x1ec

    .line 159
    :try_start_9
    const-string v4, "DrmConvertSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to close File:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_9
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_a

    goto :goto_0

    .line 161
    .end local v2    # "rndAccessFile":Ljava/io/RandomAccessFile;
    .end local v3    # "e":Ljava/io/IOException;
    :goto_1
    goto/16 :goto_5

    .line 144
    .restart local v2    # "rndAccessFile":Ljava/io/RandomAccessFile;
    :catch_5
    move-exception v3

    .line 145
    .restart local v3    # "e":Ljava/io/IOException;
    const/16 v1, 0x1ec

    .line 146
    :try_start_a
    const-string v4, "DrmConvertSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not access File: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 154
    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_3

    .line 156
    :try_start_b
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_a

    goto :goto_1

    .line 157
    :catch_6
    move-exception v3

    .line 158
    .restart local v3    # "e":Ljava/io/IOException;
    const/16 v1, 0x1ec

    .line 159
    :try_start_c
    const-string v4, "DrmConvertSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to close File:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_c
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_a

    goto :goto_0

    .line 141
    .end local v3    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v3

    .line 142
    .local v3, "e":Ljava/io/FileNotFoundException;
    const/16 v1, 0x1ec

    .line 143
    :try_start_d
    const-string v4, "DrmConvertSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " could not be found."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 154
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    if-eqz v2, :cond_3

    .line 156
    :try_start_e
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_e} :catch_a

    goto :goto_1

    .line 157
    :catch_8
    move-exception v3

    .line 158
    .local v3, "e":Ljava/io/IOException;
    const/16 v1, 0x1ec

    .line 159
    :try_start_f
    const-string v4, "DrmConvertSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to close File:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_f
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_f} :catch_a

    goto/16 :goto_0

    .line 154
    .end local v3    # "e":Ljava/io/IOException;
    :goto_2
    if-eqz v2, :cond_1

    .line 156
    :try_start_10
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_10} :catch_a

    .line 161
    goto :goto_3

    .line 157
    :catch_9
    move-exception v4

    .line 158
    .local v4, "e":Ljava/io/IOException;
    const/16 v1, 0x1ec

    .line 159
    :try_start_11
    const-string v5, "DrmConvertSession"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to close File:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    .end local v4    # "e":Ljava/io/IOException;
    :cond_1
    :goto_3
    throw v3
    :try_end_11
    .catch Ljava/lang/IllegalStateException; {:try_start_11 .. :try_end_11} :catch_a

    .line 133
    .end local v2    # "rndAccessFile":Ljava/io/RandomAccessFile;
    :cond_2
    :goto_4
    const/16 v1, 0x196

    .line 168
    :cond_3
    :goto_5
    goto :goto_6

    .line 165
    :catch_a
    move-exception v2

    .line 166
    .local v2, "e":Ljava/lang/IllegalStateException;
    const-string v3, "DrmConvertSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not close convertsession. Convertsession: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/google/android/mms/util/DrmConvertSession;->mConvertSessionId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :cond_4
    :goto_6
    return v1
.end method

.method public convert([BI)[B
    .locals 6
    .param p1, "inBuffer"    # [B
    .param p2, "size"    # I

    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, "result":[B
    if-eqz p1, :cond_2

    .line 86
    const/4 v1, 0x0

    .line 88
    .local v1, "convertedStatus":Landroid/drm/DrmConvertedStatus;
    :try_start_0
    array-length v2, p1

    if-eq p2, v2, :cond_0

    .line 89
    new-array v2, p2, [B

    .line 90
    .local v2, "buf":[B
    const/4 v3, 0x0

    invoke-static {p1, v3, v2, v3, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 91
    iget-object v3, p0, Lcom/google/android/mms/util/DrmConvertSession;->mDrmClient:Landroid/drm/DrmManagerClient;

    iget v4, p0, Lcom/google/android/mms/util/DrmConvertSession;->mConvertSessionId:I

    invoke-virtual {v3, v4, v2}, Landroid/drm/DrmManagerClient;->convertData(I[B)Landroid/drm/DrmConvertedStatus;

    move-result-object v3

    move-object v1, v3

    .line 92
    .end local v2    # "buf":[B
    goto :goto_0

    .line 93
    :cond_0
    iget-object v2, p0, Lcom/google/android/mms/util/DrmConvertSession;->mDrmClient:Landroid/drm/DrmManagerClient;

    iget v3, p0, Lcom/google/android/mms/util/DrmConvertSession;->mConvertSessionId:I

    invoke-virtual {v2, v3, p1}, Landroid/drm/DrmManagerClient;->convertData(I[B)Landroid/drm/DrmConvertedStatus;

    move-result-object v2

    move-object v1, v2

    .line 96
    :goto_0
    if-eqz v1, :cond_1

    iget v2, v1, Landroid/drm/DrmConvertedStatus;->statusCode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v2, v1, Landroid/drm/DrmConvertedStatus;->convertedData:[B

    if-eqz v2, :cond_1

    .line 99
    iget-object v2, v1, Landroid/drm/DrmConvertedStatus;->convertedData:[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 107
    .end local v1    # "convertedStatus":Landroid/drm/DrmConvertedStatus;
    :cond_1
    :goto_1
    goto :goto_2

    .line 104
    .restart local v1    # "convertedStatus":Landroid/drm/DrmConvertedStatus;
    :catch_0
    move-exception v2

    .line 105
    .local v2, "e":Ljava/lang/IllegalStateException;
    const-string v3, "DrmConvertSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not convert data. Convertsession: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/google/android/mms/util/DrmConvertSession;->mConvertSessionId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "convertedStatus":Landroid/drm/DrmConvertedStatus;
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    goto :goto_2

    .line 101
    .restart local v1    # "convertedStatus":Landroid/drm/DrmConvertedStatus;
    :catch_1
    move-exception v2

    .line 102
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "DrmConvertSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Buffer with data to convert is illegal. Convertsession: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/google/android/mms/util/DrmConvertSession;->mConvertSessionId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_1

    .line 108
    .end local v1    # "convertedStatus":Landroid/drm/DrmConvertedStatus;
    :goto_2
    nop

    .line 111
    return-object v0

    .line 109
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Parameter inBuffer is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
