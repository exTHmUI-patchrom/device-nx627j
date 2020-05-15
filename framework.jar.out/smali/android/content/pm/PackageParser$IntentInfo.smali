.class public abstract Landroid/content/pm/PackageParser$IntentInfo;
.super Landroid/content/IntentFilter;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "IntentInfo"
.end annotation


# instance fields
.field public banner:I

.field public hasDefault:Z

.field public icon:I

.field public labelRes:I

.field public logo:I

.field public nonLocalizedLabel:Ljava/lang/CharSequence;

.field public preferred:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 7940
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 7941
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;

    .line 7944
    invoke-direct {p0, p1}, Landroid/content/IntentFilter;-><init>(Landroid/os/Parcel;)V

    .line 7945
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Landroid/content/pm/PackageParser$IntentInfo;->hasDefault:Z

    .line 7946
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageParser$IntentInfo;->labelRes:I

    .line 7947
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageParser$IntentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 7948
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageParser$IntentInfo;->icon:I

    .line 7949
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageParser$IntentInfo;->logo:I

    .line 7950
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageParser$IntentInfo;->banner:I

    .line 7951
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageParser$IntentInfo;->preferred:I

    .line 7952
    return-void
.end method


# virtual methods
.method public writeIntentInfoToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 7956
    invoke-super {p0, p1, p2}, Landroid/content/IntentFilter;->writeToParcel(Landroid/os/Parcel;I)V

    .line 7957
    iget-boolean v0, p0, Landroid/content/pm/PackageParser$IntentInfo;->hasDefault:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7958
    iget v0, p0, Landroid/content/pm/PackageParser$IntentInfo;->labelRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7959
    iget-object v0, p0, Landroid/content/pm/PackageParser$IntentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 7960
    iget v0, p0, Landroid/content/pm/PackageParser$IntentInfo;->icon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7961
    iget v0, p0, Landroid/content/pm/PackageParser$IntentInfo;->logo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7962
    iget v0, p0, Landroid/content/pm/PackageParser$IntentInfo;->banner:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7963
    iget v0, p0, Landroid/content/pm/PackageParser$IntentInfo;->preferred:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7964
    return-void
.end method
