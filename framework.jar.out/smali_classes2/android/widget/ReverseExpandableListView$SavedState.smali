.class Landroid/widget/ReverseExpandableListView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "ReverseExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ReverseExpandableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/widget/ReverseExpandableListView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field expandedGroupMetadataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/ReverseExpandableListConnector$GroupMetadata;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1307
    new-instance v0, Landroid/widget/ReverseExpandableListView$SavedState$1;

    invoke-direct {v0}, Landroid/widget/ReverseExpandableListView$SavedState$1;-><init>()V

    sput-object v0, Landroid/widget/ReverseExpandableListView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1296
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1297
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/ReverseExpandableListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    .line 1298
    iget-object v0, p0, Landroid/widget/ReverseExpandableListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    const-class v1, Landroid/widget/ReverseExpandableListConnector;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 1299
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/widget/ReverseExpandableListView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/widget/ReverseExpandableListView$1;

    .line 1279
    invoke-direct {p0, p1}, Landroid/widget/ReverseExpandableListView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable;",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ReverseExpandableListConnector$GroupMetadata;",
            ">;)V"
        }
    .end annotation

    .line 1288
    .local p2, "expandedGroupMetadataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ReverseExpandableListConnector$GroupMetadata;>;"
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1289
    iput-object p2, p0, Landroid/widget/ReverseExpandableListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    .line 1290
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1303
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1304
    iget-object v0, p0, Landroid/widget/ReverseExpandableListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 1305
    return-void
.end method
