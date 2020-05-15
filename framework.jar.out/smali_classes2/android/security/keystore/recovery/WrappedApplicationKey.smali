.class public final Landroid/security/keystore/recovery/WrappedApplicationKey;
.super Ljava/lang/Object;
.source "WrappedApplicationKey.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/security/keystore/recovery/WrappedApplicationKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlias:Ljava/lang/String;

.field private mEncryptedKeyMaterial:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 145
    new-instance v0, Landroid/security/keystore/recovery/WrappedApplicationKey$1;

    invoke-direct {v0}, Landroid/security/keystore/recovery/WrappedApplicationKey$1;-><init>()V

    sput-object v0, Landroid/security/keystore/recovery/WrappedApplicationKey;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/recovery/WrappedApplicationKey;->mAlias:Ljava/lang/String;

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/recovery/WrappedApplicationKey;->mEncryptedKeyMaterial:[B

    .line 168
    return-void
.end method

.method synthetic constructor <init>(Landroid/security/keystore/recovery/WrappedApplicationKey$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/security/keystore/recovery/WrappedApplicationKey$1;

    .line 40
    invoke-direct {p0}, Landroid/security/keystore/recovery/WrappedApplicationKey;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "encryptedKeyMaterial"    # [B

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/security/keystore/recovery/WrappedApplicationKey;->mAlias:Ljava/lang/String;

    .line 119
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/security/keystore/recovery/WrappedApplicationKey;->mEncryptedKeyMaterial:[B

    .line 120
    return-void
.end method

.method static synthetic access$100(Landroid/security/keystore/recovery/WrappedApplicationKey;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/security/keystore/recovery/WrappedApplicationKey;

    .line 40
    iget-object v0, p0, Landroid/security/keystore/recovery/WrappedApplicationKey;->mAlias:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Landroid/security/keystore/recovery/WrappedApplicationKey;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/security/keystore/recovery/WrappedApplicationKey;
    .param p1, "x1"    # Ljava/lang/String;

    .line 40
    iput-object p1, p0, Landroid/security/keystore/recovery/WrappedApplicationKey;->mAlias:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Landroid/security/keystore/recovery/WrappedApplicationKey;)[B
    .locals 1
    .param p0, "x0"    # Landroid/security/keystore/recovery/WrappedApplicationKey;

    .line 40
    iget-object v0, p0, Landroid/security/keystore/recovery/WrappedApplicationKey;->mEncryptedKeyMaterial:[B

    return-object v0
.end method

.method static synthetic access$202(Landroid/security/keystore/recovery/WrappedApplicationKey;[B)[B
    .locals 0
    .param p0, "x0"    # Landroid/security/keystore/recovery/WrappedApplicationKey;
    .param p1, "x1"    # [B

    .line 40
    iput-object p1, p0, Landroid/security/keystore/recovery/WrappedApplicationKey;->mEncryptedKeyMaterial:[B

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public getAccount()[B
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 142
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getAlias()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Landroid/security/keystore/recovery/WrappedApplicationKey;->mAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getEncryptedKeyMaterial()[B
    .locals 1

    .line 133
    iget-object v0, p0, Landroid/security/keystore/recovery/WrappedApplicationKey;->mEncryptedKeyMaterial:[B

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 158
    iget-object v0, p0, Landroid/security/keystore/recovery/WrappedApplicationKey;->mAlias:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Landroid/security/keystore/recovery/WrappedApplicationKey;->mEncryptedKeyMaterial:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 160
    return-void
.end method
