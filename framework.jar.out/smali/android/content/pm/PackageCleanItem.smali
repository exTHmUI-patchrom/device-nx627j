.class public Landroid/content/pm/PackageCleanItem;
.super Ljava/lang/Object;
.source "PackageCleanItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/PackageCleanItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final andCode:Z

.field public final packageName:Ljava/lang/String;

.field public final userId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    new-instance v0, Landroid/content/pm/PackageCleanItem$1;

    invoke-direct {v0}, Landroid/content/pm/PackageCleanItem$1;-><init>()V

    sput-object v0, Landroid/content/pm/PackageCleanItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "andCode"    # Z

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Landroid/content/pm/PackageCleanItem;->userId:I

    .line 30
    iput-object p2, p0, Landroid/content/pm/PackageCleanItem;->packageName:Ljava/lang/String;

    .line 31
    iput-boolean p3, p0, Landroid/content/pm/PackageCleanItem;->andCode:Z

    .line 32
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageCleanItem;->userId:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageCleanItem;->packageName:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/content/pm/PackageCleanItem;->andCode:Z

    .line 84
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/PackageCleanItem$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/content/pm/PackageCleanItem$1;

    .line 23
    invoke-direct {p0, p1}, Landroid/content/pm/PackageCleanItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 36
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 37
    return v0

    .line 40
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 41
    :try_start_0
    move-object v2, p1

    check-cast v2, Landroid/content/pm/PackageCleanItem;

    .line 42
    .local v2, "other":Landroid/content/pm/PackageCleanItem;
    iget v3, p0, Landroid/content/pm/PackageCleanItem;->userId:I

    iget v4, v2, Landroid/content/pm/PackageCleanItem;->userId:I

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Landroid/content/pm/PackageCleanItem;->packageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/pm/PackageCleanItem;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Landroid/content/pm/PackageCleanItem;->andCode:Z

    iget-boolean v4, v2, Landroid/content/pm/PackageCleanItem;->andCode:Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0

    .line 45
    .end local v2    # "other":Landroid/content/pm/PackageCleanItem;
    :catch_0
    move-exception v0

    goto :goto_1

    .line 46
    :cond_2
    nop

    .line 47
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 52
    const/16 v0, 0x11

    .line 53
    .local v0, "result":I
    const/16 v1, 0x1f

    mul-int v2, v1, v0

    iget v3, p0, Landroid/content/pm/PackageCleanItem;->userId:I

    add-int/2addr v2, v3

    .line 54
    .end local v0    # "result":I
    .local v2, "result":I
    mul-int v0, v1, v2

    iget-object v3, p0, Landroid/content/pm/PackageCleanItem;->packageName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 55
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int/2addr v1, v0

    iget-boolean v2, p0, Landroid/content/pm/PackageCleanItem;->andCode:Z

    add-int/2addr v1, v2

    .line 56
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .line 64
    iget v0, p0, Landroid/content/pm/PackageCleanItem;->userId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    iget-object v0, p0, Landroid/content/pm/PackageCleanItem;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    iget-boolean v0, p0, Landroid/content/pm/PackageCleanItem;->andCode:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    return-void
.end method
