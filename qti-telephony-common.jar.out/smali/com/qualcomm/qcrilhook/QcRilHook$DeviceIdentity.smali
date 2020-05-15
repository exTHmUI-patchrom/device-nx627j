.class public Lcom/qualcomm/qcrilhook/QcRilHook$DeviceIdentity;
.super Ljava/lang/Object;
.source "QcRilHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/QcRilHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeviceIdentity"
.end annotation


# instance fields
.field private mEsn:Ljava/lang/String;

.field private mImei:Ljava/lang/String;

.field private mImeisv:Ljava/lang/String;

.field private mMeid:Ljava/lang/String;

.field final synthetic this$0:Lcom/qualcomm/qcrilhook/QcRilHook;


# direct methods
.method public constructor <init>(Lcom/qualcomm/qcrilhook/QcRilHook;[B)V
    .locals 6
    .param p1, "this$0"    # Lcom/qualcomm/qcrilhook/QcRilHook;
    .param p2, "deviceIdentity"    # [B

    .line 2138
    iput-object p1, p0, Lcom/qualcomm/qcrilhook/QcRilHook$DeviceIdentity;->this$0:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook$DeviceIdentity;->mImei:Ljava/lang/String;

    .line 2134
    iput-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook$DeviceIdentity;->mImeisv:Ljava/lang/String;

    .line 2135
    iput-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook$DeviceIdentity;->mEsn:Ljava/lang/String;

    .line 2136
    iput-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook$DeviceIdentity;->mMeid:Ljava/lang/String;

    .line 2141
    :try_start_0
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2142
    .local v0, "payload":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 2144
    const-string v1, "QC_RIL_OEM_HOOK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DeviceIdentity raw: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2145
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 2146
    .local v1, "lenth":I
    if-lez v1, :cond_0

    .line 2147
    new-array v2, v1, [B

    .line 2148
    .local v2, "data":[B
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 2149
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v3, p0, Lcom/qualcomm/qcrilhook/QcRilHook$DeviceIdentity;->mImei:Ljava/lang/String;

    .line 2150
    const-string v3, "QC_RIL_OEM_HOOK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DeviceIdentity imsi = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qualcomm/qcrilhook/QcRilHook$DeviceIdentity;->mImei:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2153
    .end local v2    # "data":[B
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    move v1, v2

    .line 2154
    if-lez v1, :cond_1

    .line 2155
    new-array v2, v1, [B

    .line 2156
    .restart local v2    # "data":[B
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 2157
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v3, p0, Lcom/qualcomm/qcrilhook/QcRilHook$DeviceIdentity;->mImeisv:Ljava/lang/String;

    .line 2158
    const-string v3, "QC_RIL_OEM_HOOK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DeviceIdentity mImeisv = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qualcomm/qcrilhook/QcRilHook$DeviceIdentity;->mImeisv:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2161
    .end local v2    # "data":[B
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    move v1, v2

    .line 2162
    if-lez v1, :cond_2

    .line 2163
    new-array v2, v1, [B

    .line 2164
    .restart local v2    # "data":[B
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 2165
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v3, p0, Lcom/qualcomm/qcrilhook/QcRilHook$DeviceIdentity;->mEsn:Ljava/lang/String;

    .line 2166
    const-string v3, "QC_RIL_OEM_HOOK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DeviceIdentity mEsn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qualcomm/qcrilhook/QcRilHook$DeviceIdentity;->mEsn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2169
    .end local v2    # "data":[B
    :cond_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    move v1, v2

    .line 2170
    if-lez v1, :cond_3

    .line 2171
    new-array v2, v1, [B

    .line 2172
    .restart local v2    # "data":[B
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 2173
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v3, p0, Lcom/qualcomm/qcrilhook/QcRilHook$DeviceIdentity;->mMeid:Ljava/lang/String;

    .line 2174
    const-string v3, "QC_RIL_OEM_HOOK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DeviceIdentity mMeid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qualcomm/qcrilhook/QcRilHook$DeviceIdentity;->mMeid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2178
    .end local v0    # "payload":Ljava/nio/ByteBuffer;
    .end local v2    # "data":[B
    :cond_3
    goto :goto_0

    .line 2176
    .end local v1    # "lenth":I
    :catch_0
    move-exception v0

    .line 2177
    .local v0, "e":Ljava/nio/BufferUnderflowException;
    const-string v1, "QC_RIL_OEM_HOOK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DeviceIdentity to parse payload w/ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2180
    .end local v0    # "e":Ljava/nio/BufferUnderflowException;
    :goto_0
    return-void
.end method


# virtual methods
.method public getImei()Ljava/lang/String;
    .locals 1

    .line 2183
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook$DeviceIdentity;->mImei:Ljava/lang/String;

    return-object v0
.end method

.method public getMeid()Ljava/lang/String;
    .locals 1

    .line 2187
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook$DeviceIdentity;->mMeid:Ljava/lang/String;

    return-object v0
.end method
