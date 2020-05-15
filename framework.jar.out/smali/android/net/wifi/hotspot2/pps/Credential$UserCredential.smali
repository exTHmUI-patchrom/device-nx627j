.class public final Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;
.super Ljava/lang/Object;
.source "Credential.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/hotspot2/pps/Credential;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UserCredential"
.end annotation


# static fields
.field public static final AUTH_METHOD_MSCHAP:Ljava/lang/String; = "MS-CHAP"

.field public static final AUTH_METHOD_MSCHAPV2:Ljava/lang/String; = "MS-CHAP-V2"

.field public static final AUTH_METHOD_PAP:Ljava/lang/String; = "PAP"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_PASSWORD_BYTES:I = 0xff

.field private static final MAX_USERNAME_BYTES:I = 0x3f

.field private static final SUPPORTED_AUTH:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAbleToShare:Z

.field private mEapType:I

.field private mMachineManaged:Z

.field private mNonEapInnerMethod:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mSoftTokenApp:Ljava/lang/String;

.field private mUsername:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 168
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "PAP"

    const-string v2, "MS-CHAP"

    const-string v3, "MS-CHAP-V2"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 169
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->SUPPORTED_AUTH:Ljava/util/Set;

    .line 431
    new-instance v0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential$1;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential$1;-><init>()V

    sput-object v0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mUsername:Ljava/lang/String;

    .line 195
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mPassword:Ljava/lang/String;

    .line 216
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mMachineManaged:Z

    .line 233
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mSoftTokenApp:Ljava/lang/String;

    .line 250
    iput-boolean v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mAbleToShare:Z

    .line 271
    const/high16 v1, -0x80000000

    iput v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mEapType:I

    .line 297
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mNonEapInnerMethod:Ljava/lang/String;

    .line 318
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;)V
    .locals 2
    .param p1, "source"    # Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mUsername:Ljava/lang/String;

    .line 195
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mPassword:Ljava/lang/String;

    .line 216
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mMachineManaged:Z

    .line 233
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mSoftTokenApp:Ljava/lang/String;

    .line 250
    iput-boolean v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mAbleToShare:Z

    .line 271
    const/high16 v1, -0x80000000

    iput v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mEapType:I

    .line 297
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mNonEapInnerMethod:Ljava/lang/String;

    .line 326
    if-eqz p1, :cond_0

    .line 327
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mUsername:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mUsername:Ljava/lang/String;

    .line 328
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mPassword:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mPassword:Ljava/lang/String;

    .line 329
    iget-boolean v0, p1, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mMachineManaged:Z

    iput-boolean v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mMachineManaged:Z

    .line 330
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mSoftTokenApp:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mSoftTokenApp:Ljava/lang/String;

    .line 331
    iget-boolean v0, p1, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mAbleToShare:Z

    iput-boolean v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mAbleToShare:Z

    .line 332
    iget v0, p1, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mEapType:I

    iput v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mEapType:I

    .line 333
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mNonEapInnerMethod:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mNonEapInnerMethod:Ljava/lang/String;

    .line 335
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 339
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "thatObject"    # Ljava/lang/Object;

    .line 355
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 356
    return v0

    .line 358
    :cond_0
    instance-of v1, p1, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 359
    return v2

    .line 362
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    .line 363
    .local v1, "that":Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;
    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mUsername:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mUsername:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mPassword:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mPassword:Ljava/lang/String;

    .line 364
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mMachineManaged:Z

    iget-boolean v4, v1, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mMachineManaged:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mSoftTokenApp:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mSoftTokenApp:Ljava/lang/String;

    .line 366
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mAbleToShare:Z

    iget-boolean v4, v1, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mAbleToShare:Z

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mEapType:I

    iget v4, v1, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mEapType:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mNonEapInnerMethod:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mNonEapInnerMethod:Ljava/lang/String;

    .line 369
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 363
    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getAbleToShare()Z
    .locals 1

    .line 261
    iget-boolean v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mAbleToShare:Z

    return v0
.end method

.method public getEapType()I
    .locals 1

    .line 291
    iget v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mEapType:I

    return v0
.end method

.method public getMachineManaged()Z
    .locals 1

    .line 227
    iget-boolean v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mMachineManaged:Z

    return v0
.end method

.method public getNonEapInnerMethod()Ljava/lang/String;
    .locals 1

    .line 312
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mNonEapInnerMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 210
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getSoftTokenApp()Ljava/lang/String;
    .locals 1

    .line 244
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mSoftTokenApp:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .line 189
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 374
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mUsername:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mPassword:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mMachineManaged:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mSoftTokenApp:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mAbleToShare:Z

    .line 375
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mEapType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mNonEapInnerMethod:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 374
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setAbleToShare(Z)V
    .locals 0
    .param p1, "ableToShare"    # Z

    .line 255
    iput-boolean p1, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mAbleToShare:Z

    .line 256
    return-void
.end method

.method public setEapType(I)V
    .locals 0
    .param p1, "eapType"    # I

    .line 282
    iput p1, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mEapType:I

    .line 283
    return-void
.end method

.method public setMachineManaged(Z)V
    .locals 0
    .param p1, "machineManaged"    # Z

    .line 221
    iput-boolean p1, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mMachineManaged:Z

    .line 222
    return-void
.end method

.method public setNonEapInnerMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "nonEapInnerMethod"    # Ljava/lang/String;

    .line 304
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mNonEapInnerMethod:Ljava/lang/String;

    .line 305
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .line 202
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mPassword:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public setSoftTokenApp(Ljava/lang/String;)V
    .locals 0
    .param p1, "softTokenApp"    # Ljava/lang/String;

    .line 238
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mSoftTokenApp:Ljava/lang/String;

    .line 239
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .line 181
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mUsername:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 381
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "Username: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    const-string v1, "MachineManaged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mMachineManaged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    const-string v1, "SoftTokenApp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mSoftTokenApp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    const-string v1, "AbleToShare: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mAbleToShare:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    const-string v1, "EAPType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mEapType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    const-string v1, "AuthMethod: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mNonEapInnerMethod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public validate()Z
    .locals 5

    .line 397
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mUsername:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 398
    const-string v0, "Credential"

    const-string v2, "Missing username"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    return v1

    .line 401
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mUsername:Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    const/16 v2, 0x3f

    if-le v0, v2, :cond_1

    .line 402
    const-string v0, "Credential"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "username exceeding maximum length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mUsername:Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 403
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 402
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    return v1

    .line 407
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mPassword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 408
    const-string v0, "Credential"

    const-string v2, "Missing password"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    return v1

    .line 411
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mPassword:Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    const/16 v2, 0xff

    if-le v0, v2, :cond_3

    .line 412
    const-string v0, "Credential"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "password exceeding maximum length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mPassword:Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 413
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 412
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    return v1

    .line 418
    :cond_3
    iget v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mEapType:I

    const/16 v2, 0x15

    if-eq v0, v2, :cond_4

    .line 419
    const-string v0, "Credential"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid EAP Type for user credential: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mEapType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    return v1

    .line 424
    :cond_4
    sget-object v0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->SUPPORTED_AUTH:Ljava/util/Set;

    iget-object v2, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mNonEapInnerMethod:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 425
    const-string v0, "Credential"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid non-EAP inner method for EAP-TTLS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mNonEapInnerMethod:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    return v1

    .line 428
    :cond_5
    const/4 v0, 0x1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 344
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mUsername:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 346
    iget-boolean v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mMachineManaged:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 347
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mSoftTokenApp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 348
    iget-boolean v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mAbleToShare:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    iget v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mEapType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 350
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mNonEapInnerMethod:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 351
    return-void
.end method
