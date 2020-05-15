.class public final Landroid/print/PrinterId;
.super Ljava/lang/Object;
.source "PrinterId.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/print/PrinterId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mLocalId:Ljava/lang/String;

.field private final mServiceName:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 125
    new-instance v0, Landroid/print/PrinterId$1;

    invoke-direct {v0}, Landroid/print/PrinterId$1;-><init>()V

    sput-object v0, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceName"    # Landroid/content/ComponentName;
    .param p2, "localId"    # Ljava/lang/String;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Landroid/print/PrinterId;->mServiceName:Landroid/content/ComponentName;

    .line 45
    iput-object p2, p0, Landroid/print/PrinterId;->mLocalId:Ljava/lang/String;

    .line 46
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/print/PrinterId;->mServiceName:Landroid/content/ComponentName;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/print/PrinterId;->mLocalId:Ljava/lang/String;

    .line 51
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/print/PrinterId$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/print/PrinterId$1;

    .line 29
    invoke-direct {p0, p1}, Landroid/print/PrinterId;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .line 87
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 88
    return v0

    .line 90
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 91
    return v1

    .line 93
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 94
    return v1

    .line 96
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/print/PrinterId;

    .line 97
    .local v2, "other":Landroid/print/PrinterId;
    iget-object v3, p0, Landroid/print/PrinterId;->mServiceName:Landroid/content/ComponentName;

    iget-object v4, v2, Landroid/print/PrinterId;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 98
    return v1

    .line 100
    :cond_3
    iget-object v3, p0, Landroid/print/PrinterId;->mLocalId:Ljava/lang/String;

    iget-object v4, v2, Landroid/print/PrinterId;->mLocalId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 101
    return v1

    .line 103
    :cond_4
    return v0
.end method

.method public getLocalId()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Landroid/print/PrinterId;->mLocalId:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceName()Landroid/content/ComponentName;
    .locals 1

    .line 61
    iget-object v0, p0, Landroid/print/PrinterId;->mServiceName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 108
    const/16 v0, 0x1f

    .line 109
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 110
    .local v1, "hashCode":I
    const/16 v2, 0x1f

    mul-int v3, v2, v1

    iget-object v4, p0, Landroid/print/PrinterId;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->hashCode()I

    move-result v4

    add-int/2addr v3, v4

    .line 111
    .end local v1    # "hashCode":I
    .local v3, "hashCode":I
    mul-int/2addr v2, v3

    iget-object v1, p0, Landroid/print/PrinterId;->mLocalId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v2, v1

    .line 112
    .end local v3    # "hashCode":I
    .local v2, "hashCode":I
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "PrinterId{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    const-string/jumbo v1, "serviceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/print/PrinterId;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    const-string v1, ", localId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/print/PrinterId;->mLocalId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 81
    iget-object v0, p0, Landroid/print/PrinterId;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 82
    iget-object v0, p0, Landroid/print/PrinterId;->mLocalId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    return-void
.end method
