.class public Landroid/telephony/ims/stub/ImsUtImplBase;
.super Ljava/lang/Object;
.source "ImsUtImplBase.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private mServiceImpl:Lcom/android/ims/internal/IImsUt$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsUtImplBase$1;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase;)V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase;->mServiceImpl:Lcom/android/ims/internal/IImsUt$Stub;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 153
    return-void
.end method

.method public getInterface()Lcom/android/ims/internal/IImsUt;
    .locals 1

    .line 359
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase;->mServiceImpl:Lcom/android/ims/internal/IImsUt$Stub;

    return-object v0
.end method

.method public queryCFForServiceClass(ILjava/lang/String;I)I
    .locals 1
    .param p1, "condition"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I

    .line 182
    const/4 v0, -0x1

    return v0
.end method

.method public queryCLIP()I
    .locals 1

    .line 205
    invoke-virtual {p0}, Landroid/telephony/ims/stub/ImsUtImplBase;->queryClip()I

    move-result v0

    return v0
.end method

.method public queryCLIR()I
    .locals 1

    .line 197
    invoke-virtual {p0}, Landroid/telephony/ims/stub/ImsUtImplBase;->queryClir()I

    move-result v0

    return v0
.end method

.method public queryCOLP()I
    .locals 1

    .line 221
    invoke-virtual {p0}, Landroid/telephony/ims/stub/ImsUtImplBase;->queryColp()I

    move-result v0

    return v0
.end method

.method public queryCOLR()I
    .locals 1

    .line 213
    invoke-virtual {p0}, Landroid/telephony/ims/stub/ImsUtImplBase;->queryColr()I

    move-result v0

    return v0
.end method

.method public queryCallBarring(I)I
    .locals 1
    .param p1, "cbType"    # I

    .line 160
    const/4 v0, -0x1

    return v0
.end method

.method public queryCallBarringForServiceClass(II)I
    .locals 1
    .param p1, "cbType"    # I
    .param p2, "serviceClass"    # I

    .line 167
    const/4 v0, -0x1

    return v0
.end method

.method public queryCallForward(ILjava/lang/String;)I
    .locals 1
    .param p1, "condition"    # I
    .param p2, "number"    # Ljava/lang/String;

    .line 174
    const/4 v0, -0x1

    return v0
.end method

.method public queryCallWaiting()I
    .locals 1

    .line 189
    const/4 v0, -0x1

    return v0
.end method

.method public queryClip()I
    .locals 1

    .line 235
    const/4 v0, -0x1

    return v0
.end method

.method public queryClir()I
    .locals 1

    .line 228
    const/4 v0, -0x1

    return v0
.end method

.method public queryColp()I
    .locals 1

    .line 249
    const/4 v0, -0x1

    return v0
.end method

.method public queryColr()I
    .locals 1

    .line 242
    const/4 v0, -0x1

    return v0
.end method

.method public setListener(Landroid/telephony/ims/ImsUtListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/telephony/ims/ImsUtListener;

    .line 353
    return-void
.end method

.method public transact(Landroid/os/Bundle;)I
    .locals 1
    .param p1, "ssInfo"    # Landroid/os/Bundle;

    .line 256
    const/4 v0, -0x1

    return v0
.end method

.method public updateCLIP(Z)I
    .locals 1
    .param p1, "enable"    # Z

    .line 302
    invoke-virtual {p0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase;->updateClip(Z)I

    move-result v0

    return v0
.end method

.method public updateCLIR(I)I
    .locals 1
    .param p1, "clirMode"    # I

    .line 294
    invoke-virtual {p0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase;->updateClir(I)I

    move-result v0

    return v0
.end method

.method public updateCOLP(Z)I
    .locals 1
    .param p1, "enable"    # Z

    .line 318
    invoke-virtual {p0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase;->updateColp(Z)I

    move-result v0

    return v0
.end method

.method public updateCOLR(I)I
    .locals 1
    .param p1, "presentation"    # I

    .line 310
    invoke-virtual {p0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase;->updateColr(I)I

    move-result v0

    return v0
.end method

.method public updateCallBarring(II[Ljava/lang/String;)I
    .locals 1
    .param p1, "cbType"    # I
    .param p2, "action"    # I
    .param p3, "barrList"    # [Ljava/lang/String;

    .line 263
    const/4 v0, -0x1

    return v0
.end method

.method public updateCallBarringForServiceClass(II[Ljava/lang/String;I)I
    .locals 1
    .param p1, "cbType"    # I
    .param p2, "action"    # I
    .param p3, "barrList"    # [Ljava/lang/String;
    .param p4, "serviceClass"    # I

    .line 271
    const/4 v0, -0x1

    return v0
.end method

.method public updateCallForward(IILjava/lang/String;II)I
    .locals 1
    .param p1, "action"    # I
    .param p2, "condition"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "timeSeconds"    # I

    .line 279
    const/4 v0, 0x0

    return v0
.end method

.method public updateCallWaiting(ZI)I
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I

    .line 286
    const/4 v0, -0x1

    return v0
.end method

.method public updateClip(Z)I
    .locals 1
    .param p1, "enable"    # Z

    .line 332
    const/4 v0, -0x1

    return v0
.end method

.method public updateClir(I)I
    .locals 1
    .param p1, "clirMode"    # I

    .line 325
    const/4 v0, -0x1

    return v0
.end method

.method public updateColp(Z)I
    .locals 1
    .param p1, "enable"    # Z

    .line 346
    const/4 v0, -0x1

    return v0
.end method

.method public updateColr(I)I
    .locals 1
    .param p1, "presentation"    # I

    .line 339
    const/4 v0, -0x1

    return v0
.end method
