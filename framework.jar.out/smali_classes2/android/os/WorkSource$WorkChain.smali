.class public final Landroid/os/WorkSource$WorkChain;
.super Ljava/lang/Object;
.source "WorkSource.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/WorkSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WorkChain"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/WorkSource$WorkChain;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mSize:I

.field private mTags:[Ljava/lang/String;

.field private mUids:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1008
    new-instance v0, Landroid/os/WorkSource$WorkChain$1;

    invoke-direct {v0}, Landroid/os/WorkSource$WorkChain$1;-><init>()V

    sput-object v0, Landroid/os/WorkSource$WorkChain;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 868
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 869
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/WorkSource$WorkChain;->mSize:I

    .line 870
    const/4 v0, 0x4

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/os/WorkSource$WorkChain;->mUids:[I

    .line 871
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/os/WorkSource$WorkChain;->mTags:[Ljava/lang/String;

    .line 872
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 882
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 883
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/WorkSource$WorkChain;->mSize:I

    .line 884
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/WorkSource$WorkChain;->mUids:[I

    .line 885
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/WorkSource$WorkChain;->mTags:[Ljava/lang/String;

    .line 886
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/os/WorkSource$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/os/WorkSource$1;

    .line 862
    invoke-direct {p0, p1}, Landroid/os/WorkSource$WorkChain;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/WorkSource$WorkChain;)V
    .locals 1
    .param p1, "other"    # Landroid/os/WorkSource$WorkChain;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 876
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 877
    iget v0, p1, Landroid/os/WorkSource$WorkChain;->mSize:I

    iput v0, p0, Landroid/os/WorkSource$WorkChain;->mSize:I

    .line 878
    iget-object v0, p1, Landroid/os/WorkSource$WorkChain;->mUids:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/os/WorkSource$WorkChain;->mUids:[I

    .line 879
    iget-object v0, p1, Landroid/os/WorkSource$WorkChain;->mTags:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/os/WorkSource$WorkChain;->mTags:[Ljava/lang/String;

    .line 880
    return-void
.end method

.method private resizeArrays()V
    .locals 6

    .line 947
    iget v0, p0, Landroid/os/WorkSource$WorkChain;->mSize:I

    mul-int/lit8 v0, v0, 0x2

    .line 948
    .local v0, "newSize":I
    new-array v1, v0, [I

    .line 949
    .local v1, "uids":[I
    new-array v2, v0, [Ljava/lang/String;

    .line 951
    .local v2, "tags":[Ljava/lang/String;
    iget-object v3, p0, Landroid/os/WorkSource$WorkChain;->mUids:[I

    iget v4, p0, Landroid/os/WorkSource$WorkChain;->mSize:I

    const/4 v5, 0x0

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 952
    iget-object v3, p0, Landroid/os/WorkSource$WorkChain;->mTags:[Ljava/lang/String;

    iget v4, p0, Landroid/os/WorkSource$WorkChain;->mSize:I

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 954
    iput-object v1, p0, Landroid/os/WorkSource$WorkChain;->mUids:[I

    .line 955
    iput-object v2, p0, Landroid/os/WorkSource$WorkChain;->mTags:[Ljava/lang/String;

    .line 956
    return-void
.end method


# virtual methods
.method public addNode(ILjava/lang/String;)Landroid/os/WorkSource$WorkChain;
    .locals 2
    .param p1, "uid"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .line 893
    iget v0, p0, Landroid/os/WorkSource$WorkChain;->mSize:I

    iget-object v1, p0, Landroid/os/WorkSource$WorkChain;->mUids:[I

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 894
    invoke-direct {p0}, Landroid/os/WorkSource$WorkChain;->resizeArrays()V

    .line 897
    :cond_0
    iget-object v0, p0, Landroid/os/WorkSource$WorkChain;->mUids:[I

    iget v1, p0, Landroid/os/WorkSource$WorkChain;->mSize:I

    aput p1, v0, v1

    .line 898
    iget-object v0, p0, Landroid/os/WorkSource$WorkChain;->mTags:[Ljava/lang/String;

    iget v1, p0, Landroid/os/WorkSource$WorkChain;->mSize:I

    aput-object p2, v0, v1

    .line 899
    iget v0, p0, Landroid/os/WorkSource$WorkChain;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/os/WorkSource$WorkChain;->mSize:I

    .line 901
    return-object p0
.end method

.method public describeContents()I
    .locals 1

    .line 998
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 985
    instance-of v0, p1, Landroid/os/WorkSource$WorkChain;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 986
    move-object v0, p1

    check-cast v0, Landroid/os/WorkSource$WorkChain;

    .line 988
    .local v0, "other":Landroid/os/WorkSource$WorkChain;
    iget v2, p0, Landroid/os/WorkSource$WorkChain;->mSize:I

    iget v3, v0, Landroid/os/WorkSource$WorkChain;->mSize:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Landroid/os/WorkSource$WorkChain;->mUids:[I

    iget-object v3, v0, Landroid/os/WorkSource$WorkChain;->mUids:[I

    .line 989
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/os/WorkSource$WorkChain;->mTags:[Ljava/lang/String;

    iget-object v3, v0, Landroid/os/WorkSource$WorkChain;->mTags:[Ljava/lang/String;

    .line 990
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    nop

    .line 988
    :cond_0
    return v1

    .line 993
    .end local v0    # "other":Landroid/os/WorkSource$WorkChain;
    :cond_1
    return v1
.end method

.method public getAttributionTag()Ljava/lang/String;
    .locals 2

    .line 916
    iget-object v0, p0, Landroid/os/WorkSource$WorkChain;->mTags:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getAttributionUid()I
    .locals 2

    .line 909
    iget-object v0, p0, Landroid/os/WorkSource$WorkChain;->mUids:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getSize()I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 943
    iget v0, p0, Landroid/os/WorkSource$WorkChain;->mSize:I

    return v0
.end method

.method public getTags()[Ljava/lang/String;
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 935
    iget v0, p0, Landroid/os/WorkSource$WorkChain;->mSize:I

    new-array v0, v0, [Ljava/lang/String;

    .line 936
    .local v0, "tags":[Ljava/lang/String;
    iget-object v1, p0, Landroid/os/WorkSource$WorkChain;->mTags:[Ljava/lang/String;

    iget v2, p0, Landroid/os/WorkSource$WorkChain;->mSize:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 937
    return-object v0
.end method

.method public getUids()[I
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 927
    iget v0, p0, Landroid/os/WorkSource$WorkChain;->mSize:I

    new-array v0, v0, [I

    .line 928
    .local v0, "uids":[I
    iget-object v1, p0, Landroid/os/WorkSource$WorkChain;->mUids:[I

    iget v2, p0, Landroid/os/WorkSource$WorkChain;->mSize:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 929
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 980
    iget v0, p0, Landroid/os/WorkSource$WorkChain;->mSize:I

    iget-object v1, p0, Landroid/os/WorkSource$WorkChain;->mUids:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    const/16 v2, 0x1f

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    mul-int/2addr v0, v2

    iget-object v1, p0, Landroid/os/WorkSource$WorkChain;->mTags:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 960
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WorkChain{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 961
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 961
    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroid/os/WorkSource$WorkChain;->mSize:I

    if-ge v1, v2, :cond_2

    .line 962
    if-eqz v1, :cond_0

    .line 963
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 965
    :cond_0
    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 966
    iget-object v2, p0, Landroid/os/WorkSource$WorkChain;->mUids:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 967
    iget-object v2, p0, Landroid/os/WorkSource$WorkChain;->mTags:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    .line 968
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 969
    iget-object v2, p0, Landroid/os/WorkSource$WorkChain;->mTags:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 971
    :cond_1
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 961
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 974
    .end local v1    # "i":I
    :cond_2
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 975
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1003
    iget v0, p0, Landroid/os/WorkSource$WorkChain;->mSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1004
    iget-object v0, p0, Landroid/os/WorkSource$WorkChain;->mUids:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1005
    iget-object v0, p0, Landroid/os/WorkSource$WorkChain;->mTags:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1006
    return-void
.end method
