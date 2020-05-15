.class public final Landroid/os/Bundle;
.super Landroid/os/BaseBundle;
.source "Bundle.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY:Landroid/os/Bundle;

.field static final FLAG_ALLOW_FDS:I = 0x400
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final FLAG_HAS_FDS:I = 0x100
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final FLAG_HAS_FDS_KNOWN:I = 0x200
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final STRIPPED:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 56
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sput-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 57
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    sget-object v1, Landroid/util/ArrayMap;->EMPTY:Landroid/util/ArrayMap;

    iput-object v1, v0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    .line 59
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sput-object v0, Landroid/os/Bundle;->STRIPPED:Landroid/os/Bundle;

    .line 60
    sget-object v0, Landroid/os/Bundle;->STRIPPED:Landroid/os/Bundle;

    const-string v1, "STRIPPED"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1199
    new-instance v0, Landroid/os/Bundle$1;

    invoke-direct {v0}, Landroid/os/Bundle$1;-><init>()V

    sput-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Landroid/os/BaseBundle;-><init>()V

    .line 68
    const/16 v0, 0x600

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 69
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .line 134
    invoke-direct {p0, p1}, Landroid/os/BaseBundle;-><init>(I)V

    .line 135
    const/16 v0, 0x600

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "b"    # Landroid/os/Bundle;

    .line 148
    invoke-direct {p0, p1}, Landroid/os/BaseBundle;-><init>(Landroid/os/BaseBundle;)V

    .line 149
    iget v0, p1, Landroid/os/Bundle;->mFlags:I

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 150
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcelledData"    # Landroid/os/Parcel;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 81
    invoke-direct {p0, p1}, Landroid/os/BaseBundle;-><init>(Landroid/os/Parcel;)V

    .line 82
    const/16 v0, 0x400

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 83
    invoke-direct {p0}, Landroid/os/Bundle;->maybePrefillHasFds()V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcelledData"    # Landroid/os/Parcel;
    .param p2, "length"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 94
    invoke-direct {p0, p1, p2}, Landroid/os/BaseBundle;-><init>(Landroid/os/Parcel;I)V

    .line 95
    const/16 v0, 0x400

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 96
    invoke-direct {p0}, Landroid/os/Bundle;->maybePrefillHasFds()V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/os/PersistableBundle;)V
    .locals 1
    .param p1, "b"    # Landroid/os/PersistableBundle;

    .line 160
    invoke-direct {p0, p1}, Landroid/os/BaseBundle;-><init>(Landroid/os/BaseBundle;)V

    .line 161
    const/16 v0, 0x600

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 162
    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .line 123
    invoke-direct {p0, p1}, Landroid/os/BaseBundle;-><init>(Ljava/lang/ClassLoader;)V

    .line 124
    const/16 v0, 0x600

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 125
    return-void
.end method

.method constructor <init>(Z)V
    .locals 0
    .param p1, "doInit"    # Z

    .line 168
    invoke-direct {p0, p1}, Landroid/os/BaseBundle;-><init>(Z)V

    .line 169
    return-void
.end method

.method public static forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 177
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 178
    .local v0, "b":Landroid/os/Bundle;
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    return-object v0
.end method

.method private maybePrefillHasFds()V
    .locals 1

    .line 106
    iget-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->hasFileDescriptors()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    or-int/lit16 v0, v0, 0x300

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    goto :goto_0

    .line 110
    :cond_0
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 113
    :cond_1
    :goto_0
    return-void
.end method

.method public static setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 0
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "defusable"    # Z

    .line 233
    if-eqz p0, :cond_0

    .line 234
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->setDefusable(Z)V

    .line 236
    :cond_0
    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 266
    invoke-super {p0}, Landroid/os/BaseBundle;->clear()V

    .line 267
    const/16 v0, 0x600

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 268
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .line 245
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public deepCopy()Landroid/os/Bundle;
    .locals 2

    .line 256
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Z)V

    .line 257
    .local v0, "b":Landroid/os/Bundle;
    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->copyInternal(Landroid/os/BaseBundle;Z)V

    .line 258
    return-object v0
.end method

.method public describeContents()I
    .locals 2

    .line 1217
    const/4 v0, 0x0

    .line 1218
    .local v0, "mask":I
    invoke-virtual {p0}, Landroid/os/Bundle;->hasFileDescriptors()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1219
    or-int/lit8 v0, v0, 0x1

    .line 1221
    :cond_0
    return v0
.end method

.method public filterValues()Landroid/os/Bundle;
    .locals 6

    .line 389
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 390
    move-object v0, p0

    .line 391
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    if-eqz v1, :cond_6

    .line 392
    iget-object v1, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    .line 393
    .local v1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_6

    .line 394
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 395
    .local v3, "value":Ljava/lang/Object;
    invoke-static {v3}, Landroid/os/PersistableBundle;->isValidType(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 396
    goto :goto_1

    .line 398
    :cond_0
    instance-of v4, v3, Landroid/os/Bundle;

    if-eqz v4, :cond_2

    .line 399
    move-object v4, v3

    check-cast v4, Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/Bundle;->filterValues()Landroid/os/Bundle;

    move-result-object v4

    .line 400
    .local v4, "newBundle":Landroid/os/Bundle;
    if-eq v4, v3, :cond_5

    .line 401
    iget-object v5, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    if-ne v1, v5, :cond_1

    .line 404
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object v0, v5

    .line 407
    iget-object v1, v0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    .line 410
    :cond_1
    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 414
    .end local v4    # "newBundle":Landroid/os/Bundle;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 415
    goto :goto_1

    .line 417
    :cond_3
    iget-object v4, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    if-ne v1, v4, :cond_4

    .line 420
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object v0, v4

    .line 423
    iget-object v1, v0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    .line 425
    :cond_4
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 393
    .end local v3    # "value":Ljava/lang/Object;
    :cond_5
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 428
    .end local v1    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "i":I
    :cond_6
    iget v1, p0, Landroid/os/Bundle;->mFlags:I

    or-int/lit16 v1, v1, 0x200

    iput v1, p0, Landroid/os/Bundle;->mFlags:I

    .line 429
    iget v1, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v1, v1, -0x101

    iput v1, p0, Landroid/os/Bundle;->mFlags:I

    .line 430
    return-object v0
.end method

.method public getBinder(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 1159
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1160
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1161
    .local v0, "o":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1162
    return-object v1

    .line 1165
    :cond_0
    :try_start_0
    move-object v2, v0

    check-cast v2, Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 1166
    :catch_0
    move-exception v2

    .line 1167
    .local v2, "e":Ljava/lang/ClassCastException;
    const-string v3, "IBinder"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 1168
    return-object v1
.end method

.method public getBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 917
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 918
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 919
    .local v0, "o":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 920
    return-object v1

    .line 923
    :cond_0
    :try_start_0
    move-object v2, v0

    check-cast v2, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 924
    :catch_0
    move-exception v2

    .line 925
    .local v2, "e":Ljava/lang/ClassCastException;
    const-string v3, "Bundle"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 926
    return-object v1
.end method

.method public getByte(Ljava/lang/String;)B
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 746
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getByte(Ljava/lang/String;)B

    move-result v0

    return v0
.end method

.method public getByte(Ljava/lang/String;B)Ljava/lang/Byte;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # B

    .line 759
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public getByteArray(Ljava/lang/String;)[B
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 1090
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getChar(Ljava/lang/String;)C
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 771
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getChar(Ljava/lang/String;)C

    move-result v0

    return v0
.end method

.method public getChar(Ljava/lang/String;C)C
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # C

    .line 784
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->getChar(Ljava/lang/String;C)C

    move-result v0

    return v0
.end method

.method public getCharArray(Ljava/lang/String;)[C
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 1118
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getCharArray(Ljava/lang/String;)[C

    move-result-object v0

    return-object v0
.end method

.method public getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 848
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/CharSequence;

    .line 864
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 1146
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getCharSequenceArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 1076
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getCharSequenceArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 198
    invoke-super {p0}, Landroid/os/BaseBundle;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 821
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # F

    .line 834
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getFloatArray(Ljava/lang/String;)[F
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 1132
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v0

    return-object v0
.end method

.method public getIBinder(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1186
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1187
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1188
    .local v0, "o":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1189
    return-object v1

    .line 1192
    :cond_0
    :try_start_0
    move-object v2, v0

    check-cast v2, Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 1193
    :catch_0
    move-exception v2

    .line 1194
    .local v2, "e":Ljava/lang/ClassCastException;
    const-string v3, "IBinder"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 1195
    return-object v1
.end method

.method public getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1048
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 940
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 941
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 942
    .local v0, "o":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 943
    return-object v1

    .line 946
    :cond_0
    :try_start_0
    move-object v2, v0

    check-cast v2, Landroid/os/Parcelable;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 947
    :catch_0
    move-exception v2

    .line 948
    .local v2, "e":Ljava/lang/ClassCastException;
    const-string v3, "Parcelable"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 949
    return-object v1
.end method

.method public getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 963
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 964
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 965
    .local v0, "o":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 966
    return-object v1

    .line 969
    :cond_0
    :try_start_0
    move-object v2, v0

    check-cast v2, [Landroid/os/Parcelable;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 970
    :catch_0
    move-exception v2

    .line 971
    .local v2, "e":Ljava/lang/ClassCastException;
    const-string v3, "Parcelable[]"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 972
    return-object v1
.end method

.method public getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 986
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 987
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 988
    .local v0, "o":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 989
    return-object v1

    .line 992
    :cond_0
    :try_start_0
    move-object v2, v0

    check-cast v2, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 993
    :catch_0
    move-exception v2

    .line 994
    .local v2, "e":Ljava/lang/ClassCastException;
    const-string v3, "ArrayList"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 995
    return-object v1
.end method

.method public getSerializable(Ljava/lang/String;)Ljava/io/Serializable;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 1034
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    return-object v0
.end method

.method public getShort(Ljava/lang/String;)S
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 796
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getShort(Ljava/lang/String;)S

    move-result v0

    return v0
.end method

.method public getShort(Ljava/lang/String;S)S
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # S

    .line 809
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->getShort(Ljava/lang/String;S)S

    move-result v0

    return v0
.end method

.method public getShortArray(Ljava/lang/String;)[S
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 1104
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getShortArray(Ljava/lang/String;)[S

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 307
    iget-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    return v0

    .line 310
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getSize(Ljava/lang/String;)Landroid/util/Size;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 877
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 878
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 880
    .local v0, "o":Ljava/lang/Object;
    :try_start_0
    move-object v1, v0

    check-cast v1, Landroid/util/Size;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 881
    :catch_0
    move-exception v1

    .line 882
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string v2, "Size"

    invoke-virtual {p0, p1, v0, v2, v1}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 883
    const/4 v2, 0x0

    return-object v2
.end method

.method public getSizeF(Ljava/lang/String;)Landroid/util/SizeF;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 897
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 898
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 900
    .local v0, "o":Ljava/lang/Object;
    :try_start_0
    move-object v1, v0

    check-cast v1, Landroid/util/SizeF;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 901
    :catch_0
    move-exception v1

    .line 902
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string v2, "SizeF"

    invoke-virtual {p0, p1, v0, v2, v1}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 903
    const/4 v2, 0x0

    return-object v2
.end method

.method public getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/SparseArray<",
            "TT;>;"
        }
    .end annotation

    .line 1010
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1011
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1012
    .local v0, "o":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1013
    return-object v1

    .line 1016
    :cond_0
    :try_start_0
    move-object v2, v0

    check-cast v2, Landroid/util/SparseArray;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 1017
    :catch_0
    move-exception v2

    .line 1018
    .local v2, "e":Ljava/lang/ClassCastException;
    const-string v3, "SparseArray"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 1019
    return-object v1
.end method

.method public getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1062
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public hasFileDescriptors()Z
    .locals 9

    .line 318
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, 0x200

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_c

    .line 319
    const/4 v0, 0x0

    .line 321
    .local v0, "fdFound":Z
    iget-object v3, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v3, :cond_0

    .line 322
    iget-object v3, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->hasFileDescriptors()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 323
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 327
    :cond_0
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    sub-int/2addr v3, v2

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_a

    .line 328
    iget-object v4, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 329
    .local v4, "obj":Ljava/lang/Object;
    instance-of v5, v4, Landroid/os/Parcelable;

    if-eqz v5, :cond_1

    .line 330
    move-object v5, v4

    check-cast v5, Landroid/os/Parcelable;

    invoke-interface {v5}, Landroid/os/Parcelable;->describeContents()I

    move-result v5

    and-int/2addr v5, v2

    if-eqz v5, :cond_9

    .line 332
    const/4 v0, 0x1

    .line 333
    goto/16 :goto_7

    .line 335
    :cond_1
    instance-of v5, v4, [Landroid/os/Parcelable;

    if-eqz v5, :cond_4

    .line 336
    move-object v5, v4

    check-cast v5, [Landroid/os/Parcelable;

    .line 337
    .local v5, "array":[Landroid/os/Parcelable;
    array-length v6, v5

    sub-int/2addr v6, v2

    .local v6, "n":I
    :goto_1
    if-ltz v6, :cond_3

    .line 338
    aget-object v7, v5, v6

    .line 339
    .local v7, "p":Landroid/os/Parcelable;
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/os/Parcelable;->describeContents()I

    move-result v8

    and-int/2addr v8, v2

    if-eqz v8, :cond_2

    .line 341
    const/4 v0, 0x1

    .line 342
    goto :goto_2

    .line 337
    .end local v7    # "p":Landroid/os/Parcelable;
    :cond_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 345
    .end local v5    # "array":[Landroid/os/Parcelable;
    .end local v6    # "n":I
    :cond_3
    :goto_2
    goto :goto_6

    :cond_4
    instance-of v5, v4, Landroid/util/SparseArray;

    if-eqz v5, :cond_7

    .line 346
    move-object v5, v4

    check-cast v5, Landroid/util/SparseArray;

    .line 348
    .local v5, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/Parcelable;>;"
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v6

    sub-int/2addr v6, v2

    .restart local v6    # "n":I
    :goto_3
    if-ltz v6, :cond_6

    .line 349
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Parcelable;

    .line 350
    .restart local v7    # "p":Landroid/os/Parcelable;
    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/os/Parcelable;->describeContents()I

    move-result v8

    and-int/2addr v8, v2

    if-eqz v8, :cond_5

    .line 352
    const/4 v0, 0x1

    .line 353
    goto :goto_4

    .line 348
    .end local v7    # "p":Landroid/os/Parcelable;
    :cond_5
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .line 356
    .end local v5    # "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/Parcelable;>;"
    .end local v6    # "n":I
    :cond_6
    :goto_4
    goto :goto_6

    :cond_7
    instance-of v5, v4, Ljava/util/ArrayList;

    if-eqz v5, :cond_9

    .line 357
    move-object v5, v4

    check-cast v5, Ljava/util/ArrayList;

    .line 360
    .local v5, "array":Ljava/util/ArrayList;
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Landroid/os/Parcelable;

    if-eqz v6, :cond_9

    .line 361
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v2

    .restart local v6    # "n":I
    :goto_5
    if-ltz v6, :cond_9

    .line 362
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Parcelable;

    .line 363
    .restart local v7    # "p":Landroid/os/Parcelable;
    if-eqz v7, :cond_8

    invoke-interface {v7}, Landroid/os/Parcelable;->describeContents()I

    move-result v8

    and-int/2addr v8, v2

    if-eqz v8, :cond_8

    .line 365
    const/4 v0, 0x1

    .line 366
    goto :goto_6

    .line 361
    .end local v7    # "p":Landroid/os/Parcelable;
    :cond_8
    add-int/lit8 v6, v6, -0x1

    goto :goto_5

    .line 327
    .end local v4    # "obj":Ljava/lang/Object;
    .end local v5    # "array":Ljava/util/ArrayList;
    .end local v6    # "n":I
    :cond_9
    :goto_6
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_0

    .line 374
    .end local v3    # "i":I
    :cond_a
    :goto_7
    if-eqz v0, :cond_b

    .line 375
    iget v3, p0, Landroid/os/Bundle;->mFlags:I

    or-int/lit16 v3, v3, 0x100

    iput v3, p0, Landroid/os/Bundle;->mFlags:I

    goto :goto_8

    .line 377
    :cond_b
    iget v3, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v3, v3, -0x101

    iput v3, p0, Landroid/os/Bundle;->mFlags:I

    .line 379
    :goto_8
    iget v3, p0, Landroid/os/Bundle;->mFlags:I

    or-int/lit16 v3, v3, 0x200

    iput v3, p0, Landroid/os/Bundle;->mFlags:I

    .line 381
    .end local v0    # "fdFound":Z
    :cond_c
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_d

    move v1, v2

    nop

    :cond_d
    return v1
.end method

.method public putAll(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 288
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 289
    invoke-virtual {p1}, Landroid/os/Bundle;->unparcel()V

    .line 290
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 293
    iget v0, p1, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    .line 294
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 296
    :cond_0
    iget v0, p1, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_1

    .line 297
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 299
    :cond_1
    return-void
.end method

.method public putBinder(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/os/IBinder;

    .line 717
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 718
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    return-void
.end method

.method public putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/os/Bundle;

    .line 698
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 699
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    return-void
.end method

.method public putByte(Ljava/lang/String;B)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # B

    .line 442
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putByte(Ljava/lang/String;B)V

    .line 443
    return-void
.end method

.method public putByteArray(Ljava/lang/String;[B)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .line 639
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putByteArray(Ljava/lang/String;[B)V

    .line 640
    return-void
.end method

.method public putChar(Ljava/lang/String;C)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # C

    .line 454
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putChar(Ljava/lang/String;C)V

    .line 455
    return-void
.end method

.method public putCharArray(Ljava/lang/String;[C)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [C

    .line 663
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putCharArray(Ljava/lang/String;[C)V

    .line 664
    return-void
.end method

.method public putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/CharSequence;

    .line 490
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 491
    return-void
.end method

.method public putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/CharSequence;

    .line 687
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 688
    return-void
.end method

.method public putCharSequenceArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 615
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putCharSequenceArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 616
    return-void
.end method

.method public putFloat(Ljava/lang/String;F)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .line 478
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putFloat(Ljava/lang/String;F)V

    .line 479
    return-void
.end method

.method public putFloatArray(Ljava/lang/String;[F)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [F

    .line 675
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 676
    return-void
.end method

.method public putIBinder(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/os/IBinder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 733
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 734
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    return-void
.end method

.method public putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 590
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 591
    return-void
.end method

.method public putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/os/Parcelable;

    .line 501
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 502
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 504
    return-void
.end method

.method public putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Landroid/os/Parcelable;

    .line 539
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 540
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 542
    return-void
.end method

.method public putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "+",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 554
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 555
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 557
    return-void
.end method

.method public putParcelableList(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 561
    .local p2, "value":Ljava/util/List;, "Ljava/util/List<+Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 562
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 564
    return-void
.end method

.method public putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/io/Serializable;

    .line 627
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 628
    return-void
.end method

.method public putShort(Ljava/lang/String;S)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # S

    .line 466
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putShort(Ljava/lang/String;S)V

    .line 467
    return-void
.end method

.method public putShortArray(Ljava/lang/String;[S)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [S

    .line 651
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putShortArray(Ljava/lang/String;[S)V

    .line 652
    return-void
.end method

.method public putSize(Ljava/lang/String;Landroid/util/Size;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/util/Size;

    .line 514
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 515
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    return-void
.end method

.method public putSizeF(Ljava/lang/String;Landroid/util/SizeF;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/util/SizeF;

    .line 526
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 527
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    return-void
.end method

.method public putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "+",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 576
    .local p2, "value":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 577
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 579
    return-void
.end method

.method public putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 602
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 603
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 1245
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->readFromParcelInner(Landroid/os/Parcel;)V

    .line 1246
    const/16 v0, 0x400

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 1247
    invoke-direct {p0}, Landroid/os/Bundle;->maybePrefillHasFds()V

    .line 1248
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 276
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->remove(Ljava/lang/String;)V

    .line 277
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    .line 278
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 280
    :cond_0
    return-void
.end method

.method public setAllowFds(Z)Z
    .locals 2
    .param p1, "allowFds"    # Z

    .line 203
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 204
    .local v0, "orig":Z
    :goto_0
    if-eqz p1, :cond_1

    .line 205
    iget v1, p0, Landroid/os/Bundle;->mFlags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Landroid/os/Bundle;->mFlags:I

    goto :goto_1

    .line 207
    :cond_1
    iget v1, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v1, v1, -0x401

    iput v1, p0, Landroid/os/Bundle;->mFlags:I

    .line 209
    :goto_1
    return v0
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .line 190
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 191
    return-void
.end method

.method public setDefusable(Z)V
    .locals 1
    .param p1, "defusable"    # Z

    .line 224
    if-eqz p1, :cond_0

    .line 225
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    goto :goto_0

    .line 227
    :cond_0
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 229
    :goto_0
    return-void
.end method

.method public declared-synchronized toShortString()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 1267
    :try_start_0
    iget-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v0, :cond_1

    .line 1268
    invoke-virtual {p0}, Landroid/os/Bundle;->isEmptyParcel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1269
    const-string v0, "EMPTY_PARCEL"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1271
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mParcelledData.dataSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1274
    :cond_1
    :try_start_2
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1266
    :catchall_0
    move-exception v0

    monitor-exit p0

    .line 1266
    .end local p0    # "this":Landroid/os/Bundle;
    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 1252
    :try_start_0
    iget-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v0, :cond_1

    .line 1253
    invoke-virtual {p0}, Landroid/os/Bundle;->isEmptyParcel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1254
    const-string v0, "Bundle[EMPTY_PARCEL]"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1256
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bundle[mParcelledData.dataSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    .line 1257
    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1256
    monitor-exit p0

    return-object v0

    .line 1260
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bundle["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1251
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Landroid/os/Bundle;
    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1231
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->pushAllowFds(Z)Z

    move-result v0

    .line 1233
    .local v0, "oldAllowFds":Z
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->writeToParcelInner(Landroid/os/Parcel;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1235
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->restoreAllowFds(Z)V

    .line 1236
    nop

    .line 1237
    return-void

    .line 1235
    :catchall_0
    move-exception v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->restoreAllowFds(Z)V

    throw v1
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 1279
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1281
    .local v0, "token":J
    iget-object v2, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v2, :cond_1

    .line 1282
    invoke-virtual {p0}, Landroid/os/Bundle;->isEmptyParcel()Z

    move-result v2

    const-wide v3, 0x10500000001L

    if-eqz v2, :cond_0

    .line 1283
    const/4 v2, 0x0

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_0

    .line 1285
    :cond_0
    iget-object v2, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_0

    .line 1288
    :cond_1
    const-wide v2, 0x10900000002L

    iget-object v4, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1291
    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1292
    return-void
.end method
