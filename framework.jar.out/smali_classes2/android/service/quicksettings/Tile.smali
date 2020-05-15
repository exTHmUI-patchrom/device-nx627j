.class public final Landroid/service/quicksettings/Tile;
.super Ljava/lang/Object;
.source "Tile.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/quicksettings/Tile;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATE_ACTIVE:I = 0x2

.field public static final STATE_INACTIVE:I = 0x1

.field public static final STATE_UNAVAILABLE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Tile"


# instance fields
.field private mContentDescription:Ljava/lang/CharSequence;

.field private mIcon:Landroid/graphics/drawable/Icon;

.field private mLabel:Ljava/lang/CharSequence;

.field private mService:Landroid/service/quicksettings/IQSService;

.field private mState:I

.field private mToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 212
    new-instance v0, Landroid/service/quicksettings/Tile$1;

    invoke-direct {v0}, Landroid/service/quicksettings/Tile$1;-><init>()V

    sput-object v0, Landroid/service/quicksettings/Tile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x2

    iput v0, p0, Landroid/service/quicksettings/Tile;->mState:I

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x2

    iput v0, p0, Landroid/service/quicksettings/Tile;->mState:I

    .line 75
    invoke-direct {p0, p1}, Landroid/service/quicksettings/Tile;->readFromParcel(Landroid/os/Parcel;)V

    .line 76
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/service/quicksettings/Tile;->mIcon:Landroid/graphics/drawable/Icon;

    goto :goto_0

    .line 205
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/quicksettings/Tile;->mIcon:Landroid/graphics/drawable/Icon;

    .line 207
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/quicksettings/Tile;->mState:I

    .line 208
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/service/quicksettings/Tile;->mLabel:Ljava/lang/CharSequence;

    .line 209
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/service/quicksettings/Tile;->mContentDescription:Ljava/lang/CharSequence;

    .line 210
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 158
    iget-object v0, p0, Landroid/service/quicksettings/Tile;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Icon;
    .locals 1

    .line 119
    iget-object v0, p0, Landroid/service/quicksettings/Tile;->mIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 140
    iget-object v0, p0, Landroid/service/quicksettings/Tile;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 100
    iget v0, p0, Landroid/service/quicksettings/Tile;->mState:I

    return v0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;

    .line 169
    iput-object p1, p0, Landroid/service/quicksettings/Tile;->mContentDescription:Ljava/lang/CharSequence;

    .line 170
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Icon;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .line 133
    iput-object p1, p0, Landroid/service/quicksettings/Tile;->mIcon:Landroid/graphics/drawable/Icon;

    .line 134
    return-void
.end method

.method public setLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/CharSequence;

    .line 151
    iput-object p1, p0, Landroid/service/quicksettings/Tile;->mLabel:Ljava/lang/CharSequence;

    .line 152
    return-void
.end method

.method public setService(Landroid/service/quicksettings/IQSService;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "service"    # Landroid/service/quicksettings/IQSService;
    .param p2, "stub"    # Landroid/os/IBinder;

    .line 88
    iput-object p1, p0, Landroid/service/quicksettings/Tile;->mService:Landroid/service/quicksettings/IQSService;

    .line 89
    iput-object p2, p0, Landroid/service/quicksettings/Tile;->mToken:Landroid/os/IBinder;

    .line 90
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .line 112
    iput p1, p0, Landroid/service/quicksettings/Tile;->mState:I

    .line 113
    return-void
.end method

.method public updateTile()V
    .locals 3

    .line 182
    :try_start_0
    iget-object v0, p0, Landroid/service/quicksettings/Tile;->mService:Landroid/service/quicksettings/IQSService;

    iget-object v1, p0, Landroid/service/quicksettings/Tile;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, p0, v1}, Landroid/service/quicksettings/IQSService;->updateQsTile(Landroid/service/quicksettings/Tile;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Tile"

    const-string v2, "Couldn\'t update tile"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 190
    iget-object v0, p0, Landroid/service/quicksettings/Tile;->mIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_0

    .line 191
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 192
    iget-object v0, p0, Landroid/service/quicksettings/Tile;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 194
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 196
    :goto_0
    iget v0, p0, Landroid/service/quicksettings/Tile;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    iget-object v0, p0, Landroid/service/quicksettings/Tile;->mLabel:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 198
    iget-object v0, p0, Landroid/service/quicksettings/Tile;->mContentDescription:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 199
    return-void
.end method
