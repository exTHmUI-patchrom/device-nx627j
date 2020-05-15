.class public Landroid/content/pm/PackageParserCacheHelper$ReadHelper;
.super Landroid/os/Parcel$ReadWriteHelper;
.source "PackageParserCacheHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParserCacheHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReadHelper"
.end annotation


# instance fields
.field private final mParcel:Landroid/os/Parcel;

.field private final mStrings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .line 45
    invoke-direct {p0}, Landroid/os/Parcel$ReadWriteHelper;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;->mStrings:Ljava/util/ArrayList;

    .line 46
    iput-object p1, p0, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;->mParcel:Landroid/os/Parcel;

    .line 47
    return-void
.end method


# virtual methods
.method public readString(Landroid/os/Parcel;)Ljava/lang/String;
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;

    .line 83
    iget-object v0, p0, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;->mStrings:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public startAndInstall()V
    .locals 4

    .line 56
    iget-object v0, p0, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;->mStrings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 58
    iget-object v0, p0, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 59
    .local v0, "poolPosition":I
    iget-object v1, p0, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 62
    .local v1, "startPosition":I
    iget-object v2, p0, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 63
    iget-object v2, p0, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;->mParcel:Landroid/os/Parcel;

    iget-object v3, p0, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;->mStrings:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 66
    iget-object v2, p0, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 75
    iget-object v2, p0, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p0}, Landroid/os/Parcel;->setReadWriteHelper(Landroid/os/Parcel$ReadWriteHelper;)V

    .line 76
    return-void
.end method
