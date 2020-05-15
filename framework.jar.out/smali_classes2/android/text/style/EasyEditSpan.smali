.class public Landroid/text/style/EasyEditSpan;
.super Ljava/lang/Object;
.source "EasyEditSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# static fields
.field public static final EXTRA_TEXT_CHANGED_TYPE:Ljava/lang/String; = "android.text.style.EXTRA_TEXT_CHANGED_TYPE"

.field public static final TEXT_DELETED:I = 0x1

.field public static final TEXT_MODIFIED:I = 0x2


# instance fields
.field private mDeleteEnabled:Z

.field private final mPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/style/EasyEditSpan;->mPendingIntent:Landroid/app/PendingIntent;

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/text/style/EasyEditSpan;->mDeleteEnabled:Z

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Landroid/text/style/EasyEditSpan;->mPendingIntent:Landroid/app/PendingIntent;

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/text/style/EasyEditSpan;->mDeleteEnabled:Z

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/text/style/EasyEditSpan;->mPendingIntent:Landroid/app/PendingIntent;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Landroid/text/style/EasyEditSpan;->mDeleteEnabled:Z

    .line 86
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public getPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    .line 138
    iget-object v0, p0, Landroid/text/style/EasyEditSpan;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getSpanTypeId()I
    .locals 1

    .line 106
    invoke-virtual {p0}, Landroid/text/style/EasyEditSpan;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public getSpanTypeIdInternal()I
    .locals 1

    .line 111
    const/16 v0, 0x16

    return v0
.end method

.method public isDeleteEnabled()Z
    .locals 1

    .line 120
    iget-boolean v0, p0, Landroid/text/style/EasyEditSpan;->mDeleteEnabled:Z

    return v0
.end method

.method public setDeleteEnabled(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 129
    iput-boolean p1, p0, Landroid/text/style/EasyEditSpan;->mDeleteEnabled:Z

    .line 130
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 95
    invoke-virtual {p0, p1, p2}, Landroid/text/style/EasyEditSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    .line 96
    return-void
.end method

.method public writeToParcelInternal(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 100
    iget-object v0, p0, Landroid/text/style/EasyEditSpan;->mPendingIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 101
    iget-boolean v0, p0, Landroid/text/style/EasyEditSpan;->mDeleteEnabled:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 102
    return-void
.end method
