.class public Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;
.super Ljava/lang/Object;
.source "QcRilHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/QcRilHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PdcConfigInfo"
.end annotation


# instance fields
.field private mSize:I

.field private mSubscription:Ljava/lang/String;

.field private mSubscription_length:I

.field private mValid:Z

.field private mVersion:I

.field final synthetic this$0:Lcom/qualcomm/qcrilhook/QcRilHook;


# direct methods
.method public constructor <init>(Lcom/qualcomm/qcrilhook/QcRilHook;[B)V
    .locals 8
    .param p1, "this$0"    # Lcom/qualcomm/qcrilhook/QcRilHook;
    .param p2, "pdcConfig"    # [B

    .line 1897
    iput-object p1, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->this$0:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1891
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mSubscription_length:I

    .line 1892
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mSubscription:Ljava/lang/String;

    .line 1893
    iput v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mSize:I

    .line 1894
    iput v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mVersion:I

    .line 1895
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mValid:Z

    .line 1899
    :try_start_0
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1900
    .local v2, "payload":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1902
    const-string v3, "QC_RIL_OEM_HOOK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PdcConfigInfo raw: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1904
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    iput v3, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mSubscription_length:I

    .line 1905
    const-string v3, "QC_RIL_OEM_HOOK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PdcConfigInfo mConfig_subscription_length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mSubscription_length:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    iget v3, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mSubscription_length:I

    if-gtz v3, :cond_0

    .line 1909
    iput-boolean v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mValid:Z

    .line 1910
    const-string v3, "QC_RIL_OEM_HOOK"

    const-string v4, "PdcConfigInfo mSubscription_length is not valid"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1913
    :cond_0
    iget v3, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mSubscription_length:I

    new-array v3, v3, [B

    .line 1914
    .local v3, "data":[B
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1916
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    iput-object v4, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mSubscription:Ljava/lang/String;

    .line 1917
    const-string v4, "QC_RIL_OEM_HOOK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PdcConfigInfo mSubscription = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mSubscription:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1921
    .end local v3    # "data":[B
    :goto_0
    array-length v3, p2

    iget v4, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mSubscription_length:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v1

    .line 1922
    .local v3, "length":I
    const/16 v1, 0x8

    if-eq v3, v1, :cond_1

    .line 1923
    iput-boolean v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mValid:Z

    .line 1924
    const-string v1, "QC_RIL_OEM_HOOK"

    const-string v4, "PdcConfigInfo length is not valid"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1926
    :cond_1
    const/4 v4, 0x1

    .line 1928
    .local v4, "i":I
    const/4 v4, 0x1

    :goto_1
    const/4 v5, 0x4

    if-gt v4, v5, :cond_4

    .line 1929
    iget v6, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mSubscription_length:I

    add-int/2addr v6, v4

    aget-byte v6, p2, v6

    if-gez v6, :cond_2

    .line 1930
    iget v6, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mSubscription_length:I

    add-int/2addr v6, v4

    aget-byte v6, p2, v6

    int-to-char v6, v6

    .line 1931
    .local v6, "temp":C
    and-int/lit16 v7, v6, 0xff

    int-to-char v6, v7

    .line 1932
    iget v7, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mSize:I

    add-int/2addr v7, v6

    iput v7, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mSize:I

    goto :goto_2

    .line 1934
    .end local v6    # "temp":C
    :cond_2
    iget v6, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mSize:I

    iget v7, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mSubscription_length:I

    add-int/2addr v7, v4

    aget-byte v7, p2, v7

    add-int/2addr v6, v7

    iput v6, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mSize:I

    .line 1936
    :goto_2
    if-ge v4, v5, :cond_3

    .line 1937
    iget v5, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mSize:I

    shl-int/2addr v5, v1

    iput v5, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mSize:I

    .line 1928
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1940
    :cond_4
    const/4 v4, 0x5

    :goto_3
    if-gt v4, v1, :cond_7

    .line 1941
    iget v5, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mSubscription_length:I

    add-int/2addr v5, v4

    aget-byte v5, p2, v5

    if-gez v5, :cond_5

    .line 1942
    iget v5, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mSubscription_length:I

    add-int/2addr v5, v4

    aget-byte v5, p2, v5

    int-to-char v5, v5

    .line 1943
    .local v5, "temp":C
    and-int/lit16 v6, v5, 0xff

    int-to-char v5, v6

    .line 1944
    iget v6, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mVersion:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mVersion:I

    goto :goto_4

    .line 1946
    .end local v5    # "temp":C
    :cond_5
    iget v5, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mVersion:I

    iget v6, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mSubscription_length:I

    add-int/2addr v6, v4

    aget-byte v6, p2, v6

    add-int/2addr v5, v6

    iput v5, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mVersion:I

    .line 1948
    :goto_4
    if-ge v4, v1, :cond_6

    .line 1949
    iget v5, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mVersion:I

    shl-int/2addr v5, v1

    iput v5, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mVersion:I

    .line 1940
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1952
    :cond_7
    const-string v1, "QC_RIL_OEM_HOOK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PdcConfigInfo mSize = 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mSize:I

    .line 1953
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1952
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1954
    const-string v1, "QC_RIL_OEM_HOOK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PdcConfigInfo mVersion = 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mVersion:I

    .line 1955
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1954
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1960
    .end local v2    # "payload":Ljava/nio/ByteBuffer;
    .end local v3    # "length":I
    .end local v4    # "i":I
    :goto_5
    goto :goto_6

    .line 1957
    :catch_0
    move-exception v1

    .line 1958
    .local v1, "e":Ljava/nio/BufferUnderflowException;
    iput-boolean v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mValid:Z

    .line 1959
    const-string v0, "QC_RIL_OEM_HOOK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PdcConfigInfo to parse payload w/ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1961
    .end local v1    # "e":Ljava/nio/BufferUnderflowException;
    :goto_6
    return-void
.end method


# virtual methods
.method public getSubscription()Ljava/lang/String;
    .locals 1

    .line 1964
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mSubscription:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 1968
    iget v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mVersion:I

    return v0
.end method

.method public isValid()Z
    .locals 1

    .line 1972
    iget-boolean v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mValid:Z

    return v0
.end method
