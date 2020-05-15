.class public final Landroid/view/KeyboardShortcutGroup;
.super Ljava/lang/Object;
.source "KeyboardShortcutGroup.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mLabel:Ljava/lang/CharSequence;

.field private mSystemGroup:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 128
    new-instance v0, Landroid/view/KeyboardShortcutGroup$1;

    invoke-direct {v0}, Landroid/view/KeyboardShortcutGroup$1;-><init>()V

    sput-object v0, Landroid/view/KeyboardShortcutGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/KeyboardShortcutGroup;->mItems:Ljava/util/List;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/view/KeyboardShortcutGroup;->mLabel:Ljava/lang/CharSequence;

    .line 83
    iget-object v0, p0, Landroid/view/KeyboardShortcutGroup;->mItems:Ljava/util/List;

    sget-object v1, Landroid/view/KeyboardShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Landroid/view/KeyboardShortcutGroup;->mSystemGroup:Z

    .line 85
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/KeyboardShortcutGroup$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/view/KeyboardShortcutGroup$1;

    .line 33
    invoke-direct {p0, p1}, Landroid/view/KeyboardShortcutGroup;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/CharSequence;

    .line 53
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/view/KeyboardShortcutGroup;-><init>(Ljava/lang/CharSequence;Ljava/util/List;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/util/List;)V
    .locals 2
    .param p1, "label"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 44
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Landroid/view/KeyboardShortcutInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Landroid/view/KeyboardShortcutGroup;->mLabel:Ljava/lang/CharSequence;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/view/KeyboardShortcutGroup;->mItems:Ljava/util/List;

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/util/List;Z)V
    .locals 2
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p3, "isSystemGroup"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 64
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Landroid/view/KeyboardShortcutInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Landroid/view/KeyboardShortcutGroup;->mLabel:Ljava/lang/CharSequence;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/view/KeyboardShortcutGroup;->mItems:Ljava/util/List;

    .line 67
    iput-boolean p3, p0, Landroid/view/KeyboardShortcutGroup;->mSystemGroup:Z

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Z)V
    .locals 1
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "isSystemGroup"    # Z

    .line 77
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Landroid/view/KeyboardShortcutGroup;-><init>(Ljava/lang/CharSequence;Ljava/util/List;Z)V

    .line 78
    return-void
.end method


# virtual methods
.method public addItem(Landroid/view/KeyboardShortcutInfo;)V
    .locals 1
    .param p1, "item"    # Landroid/view/KeyboardShortcutInfo;

    .line 113
    iget-object v0, p0, Landroid/view/KeyboardShortcutGroup;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Landroid/view/KeyboardShortcutGroup;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 91
    iget-object v0, p0, Landroid/view/KeyboardShortcutGroup;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isSystemGroup()Z
    .locals 1

    .line 104
    iget-boolean v0, p0, Landroid/view/KeyboardShortcutGroup;->mSystemGroup:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 123
    iget-object v0, p0, Landroid/view/KeyboardShortcutGroup;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, p0, Landroid/view/KeyboardShortcutGroup;->mItems:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 125
    iget-boolean v0, p0, Landroid/view/KeyboardShortcutGroup;->mSystemGroup:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    return-void
.end method
