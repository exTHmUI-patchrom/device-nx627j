.class public Landroid/content/pm/PackageParserCacheHelper$WriteHelper;
.super Landroid/os/Parcel$ReadWriteHelper;
.source "PackageParserCacheHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParserCacheHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WriteHelper"
.end annotation


# instance fields
.field private final mIndexes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mParcel:Landroid/os/Parcel;

.field private final mStartPos:I

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
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;

    .line 101
    invoke-direct {p0}, Landroid/os/Parcel$ReadWriteHelper;-><init>()V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->mStrings:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->mIndexes:Ljava/util/HashMap;

    .line 102
    iput-object p1, p0, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->mParcel:Landroid/os/Parcel;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->mStartPos:I

    .line 104
    iget-object v0, p0, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->mParcel:Landroid/os/Parcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget-object v0, p0, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0, p0}, Landroid/os/Parcel;->setReadWriteHelper(Landroid/os/Parcel$ReadWriteHelper;)V

    .line 107
    return-void
.end method


# virtual methods
.method public finishAndUninstall()V
    .locals 3

    .line 142
    iget-object v0, p0, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->mParcel:Landroid/os/Parcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setReadWriteHelper(Landroid/os/Parcel$ReadWriteHelper;)V

    .line 144
    iget-object v0, p0, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 145
    .local v0, "poolPosition":I
    iget-object v1, p0, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->mParcel:Landroid/os/Parcel;

    iget-object v2, p0, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->mStrings:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 147
    iget-object v1, p0, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->mParcel:Landroid/os/Parcel;

    iget v2, p0, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->mStartPos:I

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 148
    iget-object v1, p0, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget-object v1, p0, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->mParcel:Landroid/os/Parcel;

    iget-object v2, p0, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 155
    return-void
.end method

.method public writeString(Landroid/os/Parcel;Ljava/lang/String;)V
    .locals 4
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "s"    # Ljava/lang/String;

    .line 115
    iget-object v0, p0, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->mIndexes:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 116
    .local v0, "cur":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 124
    :cond_0
    iget-object v1, p0, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->mStrings:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 125
    .local v1, "index":I
    iget-object v2, p0, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->mIndexes:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v2, p0, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->mStrings:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    .end local v1    # "index":I
    :goto_0
    return-void
.end method
