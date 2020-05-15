.class public final Landroid/view/KeyboardShortcutInfo;
.super Ljava/lang/Object;
.source "KeyboardShortcutInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/KeyboardShortcutInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBaseCharacter:C

.field private final mIcon:Landroid/graphics/drawable/Icon;

.field private final mKeycode:I

.field private final mLabel:Ljava/lang/CharSequence;

.field private final mModifiers:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 159
    new-instance v0, Landroid/view/KeyboardShortcutInfo$1;

    invoke-direct {v0}, Landroid/view/KeyboardShortcutInfo$1;-><init>()V

    sput-object v0, Landroid/view/KeyboardShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/view/KeyboardShortcutInfo;->mLabel:Ljava/lang/CharSequence;

    .line 94
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/view/KeyboardShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Landroid/view/KeyboardShortcutInfo;->mBaseCharacter:C

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyboardShortcutInfo;->mKeycode:I

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyboardShortcutInfo;->mModifiers:I

    .line 98
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/KeyboardShortcutInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/view/KeyboardShortcutInfo$1;

    .line 30
    invoke-direct {p0, p1}, Landroid/view/KeyboardShortcutInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;CI)V
    .locals 2
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "baseCharacter"    # C
    .param p3, "modifiers"    # I

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Landroid/view/KeyboardShortcutInfo;->mLabel:Ljava/lang/CharSequence;

    .line 85
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 86
    iput-char p2, p0, Landroid/view/KeyboardShortcutInfo;->mBaseCharacter:C

    .line 87
    iput v0, p0, Landroid/view/KeyboardShortcutInfo;->mKeycode:I

    .line 88
    iput p3, p0, Landroid/view/KeyboardShortcutInfo;->mModifiers:I

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/KeyboardShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 1
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "keycode"    # I
    .param p3, "modifiers"    # I

    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;II)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;II)V
    .locals 2
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "icon"    # Landroid/graphics/drawable/Icon;
    .param p3, "keycode"    # I
    .param p4, "modifiers"    # I

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Landroid/view/KeyboardShortcutInfo;->mLabel:Ljava/lang/CharSequence;

    .line 53
    iput-object p2, p0, Landroid/view/KeyboardShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    .line 54
    const/4 v0, 0x0

    iput-char v0, p0, Landroid/view/KeyboardShortcutInfo;->mBaseCharacter:C

    .line 55
    if-ltz p3, :cond_0

    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v1

    if-gt p3, v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 56
    iput p3, p0, Landroid/view/KeyboardShortcutInfo;->mKeycode:I

    .line 57
    iput p4, p0, Landroid/view/KeyboardShortcutInfo;->mModifiers:I

    .line 58
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public getBaseCharacter()C
    .locals 1

    .line 132
    iget-char v0, p0, Landroid/view/KeyboardShortcutInfo;->mBaseCharacter:C

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Icon;
    .locals 1

    .line 115
    iget-object v0, p0, Landroid/view/KeyboardShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public getKeycode()I
    .locals 1

    .line 124
    iget v0, p0, Landroid/view/KeyboardShortcutInfo;->mKeycode:I

    return v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 105
    iget-object v0, p0, Landroid/view/KeyboardShortcutInfo;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    .line 142
    iget v0, p0, Landroid/view/KeyboardShortcutInfo;->mModifiers:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 152
    iget-object v0, p0, Landroid/view/KeyboardShortcutInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, p0, Landroid/view/KeyboardShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 154
    iget-char v0, p0, Landroid/view/KeyboardShortcutInfo;->mBaseCharacter:C

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    iget v0, p0, Landroid/view/KeyboardShortcutInfo;->mKeycode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    iget v0, p0, Landroid/view/KeyboardShortcutInfo;->mModifiers:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    return-void
.end method
