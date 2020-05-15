.class public final Landroid/service/autofill/BatchUpdates;
.super Ljava/lang/Object;
.source "BatchUpdates.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/BatchUpdates$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/autofill/BatchUpdates;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mTransformations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/service/autofill/InternalTransformation;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mUpdates:Landroid/widget/RemoteViews;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 190
    new-instance v0, Landroid/service/autofill/BatchUpdates$1;

    invoke-direct {v0}, Landroid/service/autofill/BatchUpdates$1;-><init>()V

    sput-object v0, Landroid/service/autofill/BatchUpdates;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/service/autofill/BatchUpdates$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroid/service/autofill/BatchUpdates$Builder;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {p1}, Landroid/service/autofill/BatchUpdates$Builder;->access$000(Landroid/service/autofill/BatchUpdates$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/BatchUpdates;->mTransformations:Ljava/util/ArrayList;

    .line 54
    invoke-static {p1}, Landroid/service/autofill/BatchUpdates$Builder;->access$100(Landroid/service/autofill/BatchUpdates$Builder;)Landroid/widget/RemoteViews;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/BatchUpdates;->mUpdates:Landroid/widget/RemoteViews;

    .line 55
    return-void
.end method

.method synthetic constructor <init>(Landroid/service/autofill/BatchUpdates$Builder;Landroid/service/autofill/BatchUpdates$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/service/autofill/BatchUpdates$Builder;
    .param p2, "x1"    # Landroid/service/autofill/BatchUpdates$1;

    .line 47
    invoke-direct {p0, p1}, Landroid/service/autofill/BatchUpdates;-><init>(Landroid/service/autofill/BatchUpdates$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method public getTransformations()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/service/autofill/InternalTransformation;",
            ">;>;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Landroid/service/autofill/BatchUpdates;->mTransformations:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getUpdates()Landroid/widget/RemoteViews;
    .locals 1

    .line 66
    iget-object v0, p0, Landroid/service/autofill/BatchUpdates;->mUpdates:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 155
    sget-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 157
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BatchUpdates: ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ", transformations="

    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    iget-object v1, p0, Landroid/service/autofill/BatchUpdates;->mTransformations:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    const-string v1, "N/A"

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/service/autofill/BatchUpdates;->mTransformations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", updates="

    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/service/autofill/BatchUpdates;->mUpdates:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 174
    iget-object v0, p0, Landroid/service/autofill/BatchUpdates;->mTransformations:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 175
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_1

    .line 177
    :cond_0
    iget-object v0, p0, Landroid/service/autofill/BatchUpdates;->mTransformations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 178
    .local v0, "size":I
    new-array v1, v0, [I

    .line 179
    .local v1, "ids":[I
    new-array v2, v0, [Landroid/service/autofill/InternalTransformation;

    .line 180
    .local v2, "values":[Landroid/service/autofill/InternalTransformation;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 181
    iget-object v4, p0, Landroid/service/autofill/BatchUpdates;->mTransformations:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 182
    .local v4, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;"
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v1, v3

    .line 183
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/service/autofill/InternalTransformation;

    aput-object v5, v2, v3

    .line 180
    .end local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 185
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 186
    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 188
    .end local v0    # "size":I
    .end local v1    # "ids":[I
    .end local v2    # "values":[Landroid/service/autofill/InternalTransformation;
    :goto_1
    iget-object v0, p0, Landroid/service/autofill/BatchUpdates;->mUpdates:Landroid/widget/RemoteViews;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 189
    return-void
.end method
