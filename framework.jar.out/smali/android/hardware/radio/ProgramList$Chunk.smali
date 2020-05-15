.class public final Landroid/hardware/radio/ProgramList$Chunk;
.super Ljava/lang/Object;
.source "ProgramList.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/ProgramList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Chunk"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/radio/ProgramList$Chunk;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mComplete:Z

.field private final mModified:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/hardware/radio/RadioManager$ProgramInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPurge:Z

.field private final mRemoved:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/hardware/radio/ProgramSelector$Identifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 412
    new-instance v0, Landroid/hardware/radio/ProgramList$Chunk$1;

    invoke-direct {v0}, Landroid/hardware/radio/ProgramList$Chunk$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/ProgramList$Chunk;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 393
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/hardware/radio/ProgramList$Chunk;->mPurge:Z

    .line 394
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    nop

    :cond_1
    iput-boolean v1, p0, Landroid/hardware/radio/ProgramList$Chunk;->mComplete:Z

    .line 395
    sget-object v0, Landroid/hardware/radio/RadioManager$ProgramInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Landroid/hardware/radio/Utils;->createSet(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/ProgramList$Chunk;->mModified:Ljava/util/Set;

    .line 396
    sget-object v0, Landroid/hardware/radio/ProgramSelector$Identifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Landroid/hardware/radio/Utils;->createSet(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/ProgramList$Chunk;->mRemoved:Ljava/util/Set;

    .line 397
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/radio/ProgramList$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/hardware/radio/ProgramList$1;

    .line 377
    invoke-direct {p0, p1}, Landroid/hardware/radio/ProgramList$Chunk;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(ZZLjava/util/Set;Ljava/util/Set;)V
    .locals 1
    .param p1, "purge"    # Z
    .param p2, "complete"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/Set<",
            "Landroid/hardware/radio/RadioManager$ProgramInfo;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/hardware/radio/ProgramSelector$Identifier;",
            ">;)V"
        }
    .end annotation

    .line 385
    .local p3, "modified":Ljava/util/Set;, "Ljava/util/Set<Landroid/hardware/radio/RadioManager$ProgramInfo;>;"
    .local p4, "removed":Ljava/util/Set;, "Ljava/util/Set<Landroid/hardware/radio/ProgramSelector$Identifier;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    iput-boolean p1, p0, Landroid/hardware/radio/ProgramList$Chunk;->mPurge:Z

    .line 387
    iput-boolean p2, p0, Landroid/hardware/radio/ProgramList$Chunk;->mComplete:Z

    .line 388
    if-eqz p3, :cond_0

    move-object v0, p3

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/hardware/radio/ProgramList$Chunk;->mModified:Ljava/util/Set;

    .line 389
    if-eqz p4, :cond_1

    move-object v0, p4

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Landroid/hardware/radio/ProgramList$Chunk;->mRemoved:Ljava/util/Set;

    .line 390
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 409
    const/4 v0, 0x0

    return v0
.end method

.method public getModified()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/hardware/radio/RadioManager$ProgramInfo;",
            ">;"
        }
    .end annotation

    .line 431
    iget-object v0, p0, Landroid/hardware/radio/ProgramList$Chunk;->mModified:Ljava/util/Set;

    return-object v0
.end method

.method public getRemoved()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/hardware/radio/ProgramSelector$Identifier;",
            ">;"
        }
    .end annotation

    .line 435
    iget-object v0, p0, Landroid/hardware/radio/ProgramList$Chunk;->mRemoved:Ljava/util/Set;

    return-object v0
.end method

.method public isComplete()Z
    .locals 1

    .line 427
    iget-boolean v0, p0, Landroid/hardware/radio/ProgramList$Chunk;->mComplete:Z

    return v0
.end method

.method public isPurge()Z
    .locals 1

    .line 423
    iget-boolean v0, p0, Landroid/hardware/radio/ProgramList$Chunk;->mPurge:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 401
    iget-boolean v0, p0, Landroid/hardware/radio/ProgramList$Chunk;->mPurge:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 402
    iget-boolean v0, p0, Landroid/hardware/radio/ProgramList$Chunk;->mComplete:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 403
    iget-object v0, p0, Landroid/hardware/radio/ProgramList$Chunk;->mModified:Ljava/util/Set;

    invoke-static {p1, v0}, Landroid/hardware/radio/Utils;->writeSet(Landroid/os/Parcel;Ljava/util/Set;)V

    .line 404
    iget-object v0, p0, Landroid/hardware/radio/ProgramList$Chunk;->mRemoved:Ljava/util/Set;

    invoke-static {p1, v0}, Landroid/hardware/radio/Utils;->writeSet(Landroid/os/Parcel;Ljava/util/Set;)V

    .line 405
    return-void
.end method
