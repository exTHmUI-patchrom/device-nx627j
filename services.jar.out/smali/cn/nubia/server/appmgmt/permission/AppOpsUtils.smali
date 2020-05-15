.class public Lcn/nubia/server/appmgmt/permission/AppOpsUtils;
.super Ljava/lang/Object;
.source "AppOpsUtils.java"


# static fields
.field private static final BUILD_VERSION_N_MR1:I = 0x19

.field private static final BUILD_VERSION_O_MR1:I = 0x1b

.field private static final DISPLAY_ID_FILE_NOT_EXIST:Ljava/lang/String; = "FileNotExist"

.field private static final MODE_ASK_BEFORE_P:I = 0x4

.field private static final MODE_ASK_IN_P:I = 0x5

.field public static final OP_CODE_DELETED:I = -0x2

.field private static final OP_CODE_NONE:I = -0x1

.field private static final SDK_VERSION_FILE_NOT_EXIST:I = -0x1

.field private static final TAG:Ljava/lang/String; = "AppOps"

.field private static sCurrentSdkVersion:I

.field private static sOperationN2P:Landroid/util/SparseIntArray;

.field private static sOperationO2P:Landroid/util/SparseIntArray;

.field private static sPreviousDisplayId:Ljava/lang/String;

.field private static sPreviousdkVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 23
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcn/nubia/server/appmgmt/permission/AppOpsUtils;->sCurrentSdkVersion:I

    .line 24
    const/4 v0, 0x0

    sput v0, Lcn/nubia/server/appmgmt/permission/AppOpsUtils;->sPreviousdkVersion:I

    .line 36
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcn/nubia/server/appmgmt/permission/AppOpsUtils;->sOperationN2P:Landroid/util/SparseIntArray;

    .line 38
    sget-object v0, Lcn/nubia/server/appmgmt/permission/AppOpsUtils;->sOperationN2P:Landroid/util/SparseIntArray;

    const/16 v1, 0x3f

    const/16 v2, 0x47

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 39
    sget-object v0, Lcn/nubia/server/appmgmt/permission/AppOpsUtils;->sOperationN2P:Landroid/util/SparseIntArray;

    const/16 v3, 0x4e

    const/16 v4, 0x40

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 40
    sget-object v0, Lcn/nubia/server/appmgmt/permission/AppOpsUtils;->sOperationN2P:Landroid/util/SparseIntArray;

    const/16 v4, 0x50

    const/16 v5, 0x41

    invoke-virtual {v0, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 41
    sget-object v0, Lcn/nubia/server/appmgmt/permission/AppOpsUtils;->sOperationN2P:Landroid/util/SparseIntArray;

    const/16 v5, 0x42

    const/16 v6, 0x51

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 42
    sget-object v0, Lcn/nubia/server/appmgmt/permission/AppOpsUtils;->sOperationN2P:Landroid/util/SparseIntArray;

    const/4 v7, -0x2

    invoke-virtual {v0, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 43
    sget-object v0, Lcn/nubia/server/appmgmt/permission/AppOpsUtils;->sOperationN2P:Landroid/util/SparseIntArray;

    const/16 v5, 0x44

    invoke-virtual {v0, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 44
    sget-object v0, Lcn/nubia/server/appmgmt/permission/AppOpsUtils;->sOperationN2P:Landroid/util/SparseIntArray;

    const/16 v5, 0x45

    invoke-virtual {v0, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 45
    sget-object v0, Lcn/nubia/server/appmgmt/permission/AppOpsUtils;->sOperationN2P:Landroid/util/SparseIntArray;

    const/16 v5, 0x46

    invoke-virtual {v0, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 46
    sget-object v0, Lcn/nubia/server/appmgmt/permission/AppOpsUtils;->sOperationN2P:Landroid/util/SparseIntArray;

    const/16 v8, 0x52

    invoke-virtual {v0, v2, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 47
    sget-object v0, Lcn/nubia/server/appmgmt/permission/AppOpsUtils;->sOperationN2P:Landroid/util/SparseIntArray;

    const/16 v9, 0x48

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 48
    sget-object v0, Lcn/nubia/server/appmgmt/permission/AppOpsUtils;->sOperationN2P:Landroid/util/SparseIntArray;

    const/16 v1, 0x49

    const/16 v10, 0x53

    invoke-virtual {v0, v1, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 49
    sget-object v0, Lcn/nubia/server/appmgmt/permission/AppOpsUtils;->sOperationN2P:Landroid/util/SparseIntArray;

    const/16 v11, 0x4a

    const/16 v12, 0x54

    invoke-virtual {v0, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 50
    sget-object v0, Lcn/nubia/server/appmgmt/permission/AppOpsUtils;->sOperationN2P:Landroid/util/SparseIntArray;

    const/16 v13, 0x55

    const/16 v14, 0x4b

    invoke-virtual {v0, v14, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 54
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcn/nubia/server/appmgmt/permission/AppOpsUtils;->sOperationO2P:Landroid/util/SparseIntArray;

    .line 56
    sget-object v0, Lcn/nubia/server/appmgmt/permission/AppOpsUtils;->sOperationO2P:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 57
    sget-object v0, Lcn/nubia/server/appmgmt/permission/AppOpsUtils;->sOperationO2P:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 58
    sget-object v0, Lcn/nubia/server/appmgmt/permission/AppOpsUtils;->sOperationO2P:Landroid/util/SparseIntArray;

    const/16 v2, 0x4f

    invoke-virtual {v0, v9, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 59
    sget-object v0, Lcn/nubia/server/appmgmt/permission/AppOpsUtils;->sOperationO2P:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 60
    sget-object v0, Lcn/nubia/server/appmgmt/permission/AppOpsUtils;->sOperationO2P:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v11, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 61
    sget-object v0, Lcn/nubia/server/appmgmt/permission/AppOpsUtils;->sOperationO2P:Landroid/util/SparseIntArray;

    const/16 v1, 0x4b

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 62
    sget-object v0, Lcn/nubia/server/appmgmt/permission/AppOpsUtils;->sOperationO2P:Landroid/util/SparseIntArray;

    const/16 v1, 0x4c

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 63
    sget-object v0, Lcn/nubia/server/appmgmt/permission/AppOpsUtils;->sOperationO2P:Landroid/util/SparseIntArray;

    const/16 v1, 0x4d

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 64
    sget-object v0, Lcn/nubia/server/appmgmt/permission/AppOpsUtils;->sOperationO2P:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 65
    sget-object v0, Lcn/nubia/server/appmgmt/permission/AppOpsUtils;->sOperationO2P:Landroid/util/SparseIntArray;

    const/16 v1, 0x4f

    invoke-virtual {v0, v1, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 66
    sget-object v0, Lcn/nubia/server/appmgmt/permission/AppOpsUtils;->sOperationO2P:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v4, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 67
    sget-object v0, Lcn/nubia/server/appmgmt/permission/AppOpsUtils;->sOperationO2P:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 68
    sget-object v0, Lcn/nubia/server/appmgmt/permission/AppOpsUtils;->sOperationO2P:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v8, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 69
    sget-object v0, Lcn/nubia/server/appmgmt/permission/AppOpsUtils;->sOperationO2P:Landroid/util/SparseIntArray;

    const/16 v1, 0x56

    invoke-virtual {v0, v10, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 70
    sget-object v0, Lcn/nubia/server/appmgmt/permission/AppOpsUtils;->sOperationO2P:Landroid/util/SparseIntArray;

    const/16 v1, 0x57

    invoke-virtual {v0, v12, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 71
    sget-object v0, Lcn/nubia/server/appmgmt/permission/AppOpsUtils;->sOperationO2P:Landroid/util/SparseIntArray;

    const/16 v1, 0x58

    invoke-virtual {v0, v13, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 72
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCorrectOpCode(I)I
    .locals 4
    .param p0, "code"    # I

    .line 102
    invoke-static {}, Lcn/nubia/server/appmgmt/permission/AppOpsUtils;->needsCorrection()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    return p0

    .line 105
    :cond_0
    const/4 v0, -0x1

    .line 106
    .local v0, "newCode":I
    sget v1, Lcn/nubia/server/appmgmt/permission/AppOpsUtils;->sPreviousdkVersion:I

    const/16 v2, 0x19

    const/4 v3, -0x1

    if-ne v1, v2, :cond_1

    .line 107
    sget-object v1, Lcn/nubia/server/appmgmt/permission/AppOpsUtils;->sOperationN2P:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    goto :goto_0

    .line 108
    :cond_1
    sget v1, Lcn/nubia/server/appmgmt/permission/AppOpsUtils;->sPreviousdkVersion:I

    const/16 v2, 0x1b

    if-ne v1, v2, :cond_2

    .line 109
    sget-object v1, Lcn/nubia/server/appmgmt/permission/AppOpsUtils;->sOperationO2P:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 111
    :cond_2
    :goto_0
    if-eq v0, v3, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, p0

    :goto_1
    return v1
.end method

.method public static getCorrectOpMode(I)I
    .locals 3
    .param p0, "mode"    # I

    .line 115
    invoke-static {}, Lcn/nubia/server/appmgmt/permission/AppOpsUtils;->needsCorrection()Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    return p0

    .line 118
    :cond_0
    move v0, p0

    .line 119
    .local v0, "newMode":I
    sget v1, Lcn/nubia/server/appmgmt/permission/AppOpsUtils;->sPreviousdkVersion:I

    const/16 v2, 0x19

    if-eq v1, v2, :cond_1

    sget v1, Lcn/nubia/server/appmgmt/permission/AppOpsUtils;->sPreviousdkVersion:I

    const/16 v2, 0x1b

    if-ne v1, v2, :cond_2

    .line 121
    :cond_1
    const/4 v1, 0x4

    if-ne p0, v1, :cond_2

    .line 122
    const/4 v0, 0x5

    .line 125
    :cond_2
    return v0
.end method

.method private static getPreviousDisplayId()Ljava/lang/String;
    .locals 5

    .line 196
    sget-object v0, Lcn/nubia/server/appmgmt/permission/AppOpsUtils;->sPreviousDisplayId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    sget-object v0, Lcn/nubia/server/appmgmt/permission/AppOpsUtils;->sPreviousDisplayId:Ljava/lang/String;

    return-object v0

    .line 199
    :cond_0
    const-string v0, "FileNotExist"

    sput-object v0, Lcn/nubia/server/appmgmt/permission/AppOpsUtils;->sPreviousDisplayId:Ljava/lang/String;

    .line 200
    const/4 v0, 0x0

    .line 202
    .local v0, "bufr":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/system/rom.version"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 204
    .local v1, "fr":Ljava/io/FileReader;
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v2

    .line 205
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcn/nubia/server/appmgmt/permission/AppOpsUtils;->sPreviousDisplayId:Ljava/lang/String;

    .line 206
    const-string v2, "AppOps"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPreviousDisplayId form rom.version : id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcn/nubia/server/appmgmt/permission/AppOpsUtils;->sPreviousDisplayId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    .end local v1    # "fr":Ljava/io/FileReader;
    nop

    .line 216
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 219
    goto :goto_0

    .line 217
    :catch_0
    move-exception v1

    .line 218
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 221
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    sget-object v1, Lcn/nubia/server/appmgmt/permission/AppOpsUtils;->sPreviousDisplayId:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 222
    :goto_1
    const-string v1, "FileNotExist"

    sput-object v1, Lcn/nubia/server/appmgmt/permission/AppOpsUtils;->sPreviousDisplayId:Ljava/lang/String;

    goto :goto_5

    .line 214
    :catchall_0
    move-exception v1

    goto :goto_6

    .line 211
    :catch_1
    move-exception v1

    .line 212
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 214
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_1

    .line 216
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 219
    goto :goto_2

    .line 217
    :catch_2
    move-exception v1

    .line 218
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 221
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    :goto_2
    sget-object v1, Lcn/nubia/server/appmgmt/permission/AppOpsUtils;->sPreviousDisplayId:Ljava/lang/String;

    if-nez v1, :cond_4

    goto :goto_1

    .line 209
    :catch_3
    move-exception v1

    .line 210
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 214
    .end local v1    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_2

    .line 216
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 219
    goto :goto_3

    .line 217
    :catch_4
    move-exception v1

    .line 218
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 221
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    :goto_3
    sget-object v1, Lcn/nubia/server/appmgmt/permission/AppOpsUtils;->sPreviousDisplayId:Ljava/lang/String;

    if-nez v1, :cond_4

    goto :goto_1

    .line 207
    :catch_5
    move-exception v1

    .line 208
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 214
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    if-eqz v0, :cond_3

    .line 216
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 219
    goto :goto_4

    .line 217
    :catch_6
    move-exception v1

    .line 218
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 221
    .end local v1    # "e":Ljava/io/IOException;
    :cond_3
    :goto_4
    sget-object v1, Lcn/nubia/server/appmgmt/permission/AppOpsUtils;->sPreviousDisplayId:Ljava/lang/String;

    if-nez v1, :cond_4

    goto :goto_1

    .line 225
    :cond_4
    :goto_5
    sget-object v1, Lcn/nubia/server/appmgmt/permission/AppOpsUtils;->sPreviousDisplayId:Ljava/lang/String;

    return-object v1

    .line 214
    :goto_6
    if-eqz v0, :cond_5

    .line 216
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 219
    goto :goto_7

    .line 217
    :catch_7
    move-exception v2

    .line 218
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 221
    .end local v2    # "e":Ljava/io/IOException;
    :cond_5
    :goto_7
    sget-object v2, Lcn/nubia/server/appmgmt/permission/AppOpsUtils;->sPreviousDisplayId:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 222
    const-string v2, "FileNotExist"

    sput-object v2, Lcn/nubia/server/appmgmt/permission/AppOpsUtils;->sPreviousDisplayId:Ljava/lang/String;

    :cond_6
    throw v1
.end method

.method private static getPreviousSdkVersion()I
    .locals 10

    .line 133
    sget v0, Lcn/nubia/server/appmgmt/permission/AppOpsUtils;->sPreviousdkVersion:I

    if-eqz v0, :cond_0

    .line 134
    sget v0, Lcn/nubia/server/appmgmt/permission/AppOpsUtils;->sPreviousdkVersion:I

    return v0

    .line 136
    :cond_0
    invoke-static {}, Lcn/nubia/server/appmgmt/permission/AppOpsUtils;->getPreviousDisplayId()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "previousDisplayId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    const-string v1, "FileNotExist"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 138
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "versionInfo":[Ljava/lang/String;
    array-length v3, v1

    if-le v3, v2, :cond_1

    .line 140
    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcn/nubia/server/appmgmt/permission/AppOpsUtils;->sPreviousdkVersion:I

    .line 141
    const-string v2, "AppOps"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPreviousSdkVersion form DisplayId : version = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcn/nubia/server/appmgmt/permission/AppOpsUtils;->sPreviousdkVersion:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    sget v2, Lcn/nubia/server/appmgmt/permission/AppOpsUtils;->sPreviousdkVersion:I

    return v2

    .line 145
    .end local v1    # "versionInfo":[Ljava/lang/String;
    :cond_1
    const/4 v1, -0x1

    sput v1, Lcn/nubia/server/appmgmt/permission/AppOpsUtils;->sPreviousdkVersion:I

    .line 146
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/system/packages.xml"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 147
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    goto/16 :goto_8

    .line 150
    :cond_2
    const/4 v4, 0x0

    .line 152
    .local v4, "str":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v4, v5

    .line 153
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 154
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 156
    :goto_0
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v7, v6

    .line 156
    .local v7, "type":I
    const/4 v8, 0x2

    if-eq v6, v8, :cond_3

    if-eq v7, v2, :cond_3

    .line 156
    .end local v7    # "type":I
    goto :goto_0

    .line 160
    .restart local v7    # "type":I
    :cond_3
    if-eq v7, v8, :cond_4

    .line 161
    nop

    .line 184
    nop

    .line 186
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 189
    goto :goto_1

    .line 187
    :catch_0
    move-exception v2

    .line 188
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 161
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    return v1

    .line 164
    :cond_4
    :try_start_2
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 165
    .local v1, "outerDepth":I
    :cond_5
    :goto_2
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    move v7, v6

    if-eq v6, v2, :cond_9

    const/4 v6, 0x3

    if-ne v7, v6, :cond_6

    .line 166
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v1, :cond_9

    .line 167
    :cond_6
    if-eq v7, v6, :cond_5

    const/4 v6, 0x4

    if-ne v7, v6, :cond_7

    .line 168
    goto :goto_2

    .line 170
    :cond_7
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 171
    .local v6, "tagName":Ljava/lang/String;
    const-string/jumbo v8, "version"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 172
    const-string/jumbo v2, "sdkVersion"

    invoke-static {v5, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcn/nubia/server/appmgmt/permission/AppOpsUtils;->sPreviousdkVersion:I

    .line 173
    const-string v2, "AppOps"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getPreviousSdkVersion form packages.xml : version = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v9, Lcn/nubia/server/appmgmt/permission/AppOpsUtils;->sPreviousdkVersion:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    sget v2, Lcn/nubia/server/appmgmt/permission/AppOpsUtils;->sPreviousdkVersion:I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 184
    nop

    .line 186
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 189
    goto :goto_3

    .line 187
    :catch_1
    move-exception v8

    .line 188
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 174
    .end local v8    # "e":Ljava/io/IOException;
    :goto_3
    return v2

    .line 176
    :cond_8
    :try_start_4
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 178
    .end local v6    # "tagName":Ljava/lang/String;
    goto :goto_2

    .line 184
    .end local v1    # "outerDepth":I
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "type":I
    :cond_9
    nop

    .line 186
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 189
    :goto_4
    goto :goto_5

    .line 187
    :catch_2
    move-exception v1

    .line 188
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 188
    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 184
    :catchall_0
    move-exception v1

    goto :goto_6

    .line 181
    :catch_3
    move-exception v1

    .line 182
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 184
    .end local v1    # "e":Ljava/io/IOException;
    if-eqz v4, :cond_a

    .line 186
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_4

    .line 179
    :catch_4
    move-exception v1

    .line 180
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_8
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 184
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz v4, :cond_a

    .line 186
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_4

    .line 192
    :cond_a
    :goto_5
    sget v1, Lcn/nubia/server/appmgmt/permission/AppOpsUtils;->sPreviousdkVersion:I

    return v1

    .line 184
    :goto_6
    if-eqz v4, :cond_b

    .line 186
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 189
    goto :goto_7

    .line 187
    :catch_5
    move-exception v2

    .line 188
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 189
    .end local v2    # "e":Ljava/io/IOException;
    :cond_b
    :goto_7
    throw v1

    .line 148
    .end local v4    # "str":Ljava/io/FileInputStream;
    :goto_8
    return v1
.end method

.method public static getPreviousdkVersion()I
    .locals 1

    .line 129
    sget v0, Lcn/nubia/server/appmgmt/permission/AppOpsUtils;->sPreviousdkVersion:I

    return v0
.end method

.method public static isContain([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "src"    # [Ljava/lang/String;
    .param p1, "dest"    # Ljava/lang/String;

    .line 75
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 77
    :cond_0
    const/4 v1, 0x0

    .line 78
    .local v1, "contain":Z
    array-length v2, p0

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, p0, v0

    .line 79
    .local v3, "str":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 80
    const/4 v1, 0x1

    .line 81
    goto :goto_1

    .line 78
    .end local v3    # "str":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_2
    :goto_1
    return v1

    .line 76
    .end local v1    # "contain":Z
    :cond_3
    :goto_2
    return v0
.end method

.method private static isFirstBootOrFotaUpGrade()Z
    .locals 4

    .line 97
    invoke-static {}, Lcn/nubia/server/appmgmt/permission/AppOpsUtils;->getPreviousDisplayId()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "previousDisplayId":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Landroid/os/Build;->TIME:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private static needsCorrection()Z
    .locals 3

    .line 88
    invoke-static {}, Lcn/nubia/server/appmgmt/permission/AppOpsUtils;->isFirstBootOrFotaUpGrade()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 89
    invoke-static {}, Lcn/nubia/server/appmgmt/permission/AppOpsUtils;->getPreviousSdkVersion()I

    move-result v0

    .line 90
    .local v0, "previousdkVersion":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    sget v2, Lcn/nubia/server/appmgmt/permission/AppOpsUtils;->sCurrentSdkVersion:I

    if-ge v0, v2, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    .line 93
    .end local v0    # "previousdkVersion":I
    :cond_1
    return v1
.end method
