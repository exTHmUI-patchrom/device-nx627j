.class public Lcom/qualcomm/qcrilhook/QcRilHook$SelectedConfig;
.super Ljava/lang/Object;
.source "QcRilHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/QcRilHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SelectedConfig"
.end annotation


# instance fields
.field private mConifgId:Ljava/lang/String;

.field private mIsActivated:Z

.field final synthetic this$0:Lcom/qualcomm/qcrilhook/QcRilHook;


# direct methods
.method constructor <init>(Lcom/qualcomm/qcrilhook/QcRilHook;[B)V
    .locals 7
    .param p1, "this$0"    # Lcom/qualcomm/qcrilhook/QcRilHook;
    .param p2, "selectedConfig"    # [B

    .line 2028
    iput-object p1, p0, Lcom/qualcomm/qcrilhook/QcRilHook$SelectedConfig;->this$0:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2017
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook$SelectedConfig;->mConifgId:Ljava/lang/String;

    .line 2018
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook$SelectedConfig;->mIsActivated:Z

    .line 2031
    :try_start_0
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2032
    .local v1, "payload":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 2034
    const-string v2, "QC_RIL_OEM_HOOK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selectedConfig raw: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2036
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 2037
    .local v2, "tempLenth":I
    const-string v3, "QC_RIL_OEM_HOOK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SelectedConfig ConfigLength = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2039
    if-gtz v2, :cond_0

    .line 2040
    const-string v3, "QC_RIL_OEM_HOOK"

    const-string v4, "selectedConfig ConfigLength is not valid"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2043
    :cond_0
    new-array v3, v2, [B

    .line 2044
    .local v3, "data":[B
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2046
    :try_start_1
    new-instance v4, Ljava/lang/String;

    const-string v5, "ISO8859-1"

    invoke-direct {v4, v3, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v4, p0, Lcom/qualcomm/qcrilhook/QcRilHook$SelectedConfig;->mConifgId:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2049
    goto :goto_0

    .line 2047
    :catch_0
    move-exception v4

    .line 2048
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_2
    const-string v5, "QC_RIL_OEM_HOOK"

    const-string v6, "unsupport ISO8859-1"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2051
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_0
    const-string v4, "QC_RIL_OEM_HOOK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "selectedConfig mConifgId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/qualcomm/qcrilhook/QcRilHook$SelectedConfig;->mConifgId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2055
    .end local v3    # "data":[B
    :goto_1
    array-length v3, p2

    sub-int/2addr v3, v2

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ne v3, v4, :cond_2

    .line 2056
    add-int/lit8 v3, v2, 0x1

    aget-byte v3, p2, v3

    if-ne v3, v4, :cond_1

    move v0, v4

    nop

    :cond_1
    iput-boolean v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook$SelectedConfig;->mIsActivated:Z

    .line 2057
    const-string v0, "QC_RIL_OEM_HOOK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selectedConfig mIsActivated = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/qualcomm/qcrilhook/QcRilHook$SelectedConfig;->mIsActivated:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2060
    :cond_2
    const-string v0, "QC_RIL_OEM_HOOK"

    const-string v3, "selectedConfig mIsActivated is not valid"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2065
    .end local v1    # "payload":Ljava/nio/ByteBuffer;
    :goto_2
    goto :goto_3

    .line 2063
    .end local v2    # "tempLenth":I
    :catch_1
    move-exception v0

    .line 2064
    .local v0, "e":Ljava/nio/BufferUnderflowException;
    const-string v1, "QC_RIL_OEM_HOOK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SelectedConfig to parse payload w/ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2066
    .end local v0    # "e":Ljava/nio/BufferUnderflowException;
    :goto_3
    return-void
.end method


# virtual methods
.method public getConfigId()Ljava/lang/String;
    .locals 1

    .line 2021
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook$SelectedConfig;->mConifgId:Ljava/lang/String;

    return-object v0
.end method

.method public isActivated()Z
    .locals 1

    .line 2025
    iget-boolean v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook$SelectedConfig;->mIsActivated:Z

    return v0
.end method
