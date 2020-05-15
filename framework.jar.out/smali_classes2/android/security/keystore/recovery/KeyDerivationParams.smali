.class public final Landroid/security/keystore/recovery/KeyDerivationParams;
.super Ljava/lang/Object;
.source "KeyDerivationParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/recovery/KeyDerivationParams$KeyDerivationAlgorithm;
    }
.end annotation


# static fields
.field public static final ALGORITHM_SCRYPT:I = 0x2

.field public static final ALGORITHM_SHA256:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/security/keystore/recovery/KeyDerivationParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAlgorithm:I

.field private final mMemoryDifficulty:I

.field private final mSalt:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 143
    new-instance v0, Landroid/security/keystore/recovery/KeyDerivationParams$1;

    invoke-direct {v0}, Landroid/security/keystore/recovery/KeyDerivationParams$1;-><init>()V

    sput-object v0, Landroid/security/keystore/recovery/KeyDerivationParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(I[B)V
    .locals 1
    .param p1, "algorithm"    # I
    .param p2, "salt"    # [B

    .line 103
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/security/keystore/recovery/KeyDerivationParams;-><init>(I[BI)V

    .line 104
    return-void
.end method

.method private constructor <init>(I[BI)V
    .locals 1
    .param p1, "algorithm"    # I
    .param p2, "salt"    # [B
    .param p3, "memoryDifficulty"    # I

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput p1, p0, Landroid/security/keystore/recovery/KeyDerivationParams;->mAlgorithm:I

    .line 112
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/security/keystore/recovery/KeyDerivationParams;->mSalt:[B

    .line 113
    iput p3, p0, Landroid/security/keystore/recovery/KeyDerivationParams;->mMemoryDifficulty:I

    .line 114
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/security/keystore/recovery/KeyDerivationParams;->mAlgorithm:I

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/recovery/KeyDerivationParams;->mSalt:[B

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/security/keystore/recovery/KeyDerivationParams;->mMemoryDifficulty:I

    .line 168
    return-void
.end method

.method public static createScryptParams([BI)Landroid/security/keystore/recovery/KeyDerivationParams;
    .locals 2
    .param p0, "salt"    # [B
    .param p1, "memoryDifficulty"    # I

    .line 96
    new-instance v0, Landroid/security/keystore/recovery/KeyDerivationParams;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0, p1}, Landroid/security/keystore/recovery/KeyDerivationParams;-><init>(I[BI)V

    return-object v0
.end method

.method public static createSha256Params([B)Landroid/security/keystore/recovery/KeyDerivationParams;
    .locals 2
    .param p0, "salt"    # [B

    .line 82
    new-instance v0, Landroid/security/keystore/recovery/KeyDerivationParams;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/security/keystore/recovery/KeyDerivationParams;-><init>(I[B)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public getAlgorithm()I
    .locals 1

    .line 120
    iget v0, p0, Landroid/security/keystore/recovery/KeyDerivationParams;->mAlgorithm:I

    return v0
.end method

.method public getMemoryDifficulty()I
    .locals 1

    .line 140
    iget v0, p0, Landroid/security/keystore/recovery/KeyDerivationParams;->mMemoryDifficulty:I

    return v0
.end method

.method public getSalt()[B
    .locals 1

    .line 127
    iget-object v0, p0, Landroid/security/keystore/recovery/KeyDerivationParams;->mSalt:[B

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 156
    iget v0, p0, Landroid/security/keystore/recovery/KeyDerivationParams;->mAlgorithm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    iget-object v0, p0, Landroid/security/keystore/recovery/KeyDerivationParams;->mSalt:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 158
    iget v0, p0, Landroid/security/keystore/recovery/KeyDerivationParams;->mMemoryDifficulty:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    return-void
.end method
