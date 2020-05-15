.class public Landroid/app/ActivityManager$TaskSnapshot;
.super Ljava/lang/Object;
.source "ActivityManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskSnapshot"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/ActivityManager$TaskSnapshot;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContentInsets:Landroid/graphics/Rect;

.field private final mIsRealSnapshot:Z

.field private final mIsTranslucent:Z

.field private final mOrientation:I

.field private final mReducedResolution:Z

.field private final mScale:F

.field private final mSnapshot:Landroid/graphics/GraphicBuffer;

.field private final mSystemUiVisibility:I

.field private final mWindowingMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2259
    new-instance v0, Landroid/app/ActivityManager$TaskSnapshot$1;

    invoke-direct {v0}, Landroid/app/ActivityManager$TaskSnapshot$1;-><init>()V

    sput-object v0, Landroid/app/ActivityManager$TaskSnapshot;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/GraphicBuffer;ILandroid/graphics/Rect;ZFZIIZ)V
    .locals 1
    .param p1, "snapshot"    # Landroid/graphics/GraphicBuffer;
    .param p2, "orientation"    # I
    .param p3, "contentInsets"    # Landroid/graphics/Rect;
    .param p4, "reducedResolution"    # Z
    .param p5, "scale"    # F
    .param p6, "isRealSnapshot"    # Z
    .param p7, "windowingMode"    # I
    .param p8, "systemUiVisibility"    # I
    .param p9, "isTranslucent"    # Z

    .line 2137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2138
    iput-object p1, p0, Landroid/app/ActivityManager$TaskSnapshot;->mSnapshot:Landroid/graphics/GraphicBuffer;

    .line 2139
    iput p2, p0, Landroid/app/ActivityManager$TaskSnapshot;->mOrientation:I

    .line 2140
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/app/ActivityManager$TaskSnapshot;->mContentInsets:Landroid/graphics/Rect;

    .line 2141
    iput-boolean p4, p0, Landroid/app/ActivityManager$TaskSnapshot;->mReducedResolution:Z

    .line 2142
    iput p5, p0, Landroid/app/ActivityManager$TaskSnapshot;->mScale:F

    .line 2143
    iput-boolean p6, p0, Landroid/app/ActivityManager$TaskSnapshot;->mIsRealSnapshot:Z

    .line 2144
    iput p7, p0, Landroid/app/ActivityManager$TaskSnapshot;->mWindowingMode:I

    .line 2145
    iput p8, p0, Landroid/app/ActivityManager$TaskSnapshot;->mSystemUiVisibility:I

    .line 2146
    iput-boolean p9, p0, Landroid/app/ActivityManager$TaskSnapshot;->mIsTranslucent:Z

    .line 2147
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 2149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2150
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/GraphicBuffer;

    iput-object v1, p0, Landroid/app/ActivityManager$TaskSnapshot;->mSnapshot:Landroid/graphics/GraphicBuffer;

    .line 2151
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/ActivityManager$TaskSnapshot;->mOrientation:I

    .line 2152
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/app/ActivityManager$TaskSnapshot;->mContentInsets:Landroid/graphics/Rect;

    .line 2153
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityManager$TaskSnapshot;->mReducedResolution:Z

    .line 2154
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$TaskSnapshot;->mScale:F

    .line 2155
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityManager$TaskSnapshot;->mIsRealSnapshot:Z

    .line 2156
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$TaskSnapshot;->mWindowingMode:I

    .line 2157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$TaskSnapshot;->mSystemUiVisibility:I

    .line 2158
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityManager$TaskSnapshot;->mIsTranslucent:Z

    .line 2159
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/ActivityManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/app/ActivityManager$1;

    .line 2119
    invoke-direct {p0, p1}, Landroid/app/ActivityManager$TaskSnapshot;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 2230
    const/4 v0, 0x0

    return v0
.end method

.method public getContentInsets()Landroid/graphics/Rect;
    .locals 1

    .line 2180
    iget-object v0, p0, Landroid/app/ActivityManager$TaskSnapshot;->mContentInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .line 2172
    iget v0, p0, Landroid/app/ActivityManager$TaskSnapshot;->mOrientation:I

    return v0
.end method

.method public getScale()F
    .locals 1

    .line 2225
    iget v0, p0, Landroid/app/ActivityManager$TaskSnapshot;->mScale:F

    return v0
.end method

.method public getSnapshot()Landroid/graphics/GraphicBuffer;
    .locals 1

    .line 2165
    iget-object v0, p0, Landroid/app/ActivityManager$TaskSnapshot;->mSnapshot:Landroid/graphics/GraphicBuffer;

    return-object v0
.end method

.method public getSystemUiVisibility()I
    .locals 1

    .line 2218
    iget v0, p0, Landroid/app/ActivityManager$TaskSnapshot;->mSystemUiVisibility:I

    return v0
.end method

.method public getWindowingMode()I
    .locals 1

    .line 2210
    iget v0, p0, Landroid/app/ActivityManager$TaskSnapshot;->mWindowingMode:I

    return v0
.end method

.method public isRealSnapshot()Z
    .locals 1

    .line 2195
    iget-boolean v0, p0, Landroid/app/ActivityManager$TaskSnapshot;->mIsRealSnapshot:Z

    return v0
.end method

.method public isReducedResolution()Z
    .locals 1

    .line 2187
    iget-boolean v0, p0, Landroid/app/ActivityManager$TaskSnapshot;->mReducedResolution:Z

    return v0
.end method

.method public isTranslucent()Z
    .locals 1

    .line 2203
    iget-boolean v0, p0, Landroid/app/ActivityManager$TaskSnapshot;->mIsTranslucent:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 2248
    iget-object v0, p0, Landroid/app/ActivityManager$TaskSnapshot;->mSnapshot:Landroid/graphics/GraphicBuffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityManager$TaskSnapshot;->mSnapshot:Landroid/graphics/GraphicBuffer;

    invoke-virtual {v0}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2249
    .local v0, "width":I
    :goto_0
    iget-object v2, p0, Landroid/app/ActivityManager$TaskSnapshot;->mSnapshot:Landroid/graphics/GraphicBuffer;

    if-eqz v2, :cond_1

    iget-object v1, p0, Landroid/app/ActivityManager$TaskSnapshot;->mSnapshot:Landroid/graphics/GraphicBuffer;

    invoke-virtual {v1}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v1

    nop

    .line 2250
    .local v1, "height":I
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TaskSnapshot{mSnapshot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/app/ActivityManager$TaskSnapshot;->mSnapshot:Landroid/graphics/GraphicBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") mOrientation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/app/ActivityManager$TaskSnapshot;->mOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mContentInsets="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/app/ActivityManager$TaskSnapshot;->mContentInsets:Landroid/graphics/Rect;

    .line 2252
    invoke-virtual {v3}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mReducedResolution="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Landroid/app/ActivityManager$TaskSnapshot;->mReducedResolution:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mScale="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/app/ActivityManager$TaskSnapshot;->mScale:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " mIsRealSnapshot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Landroid/app/ActivityManager$TaskSnapshot;->mIsRealSnapshot:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mWindowingMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/app/ActivityManager$TaskSnapshot;->mWindowingMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mSystemUiVisibility="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/app/ActivityManager$TaskSnapshot;->mSystemUiVisibility:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mIsTranslucent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Landroid/app/ActivityManager$TaskSnapshot;->mIsTranslucent:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2250
    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2235
    iget-object v0, p0, Landroid/app/ActivityManager$TaskSnapshot;->mSnapshot:Landroid/graphics/GraphicBuffer;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2236
    iget v0, p0, Landroid/app/ActivityManager$TaskSnapshot;->mOrientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2237
    iget-object v0, p0, Landroid/app/ActivityManager$TaskSnapshot;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2238
    iget-boolean v0, p0, Landroid/app/ActivityManager$TaskSnapshot;->mReducedResolution:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2239
    iget v0, p0, Landroid/app/ActivityManager$TaskSnapshot;->mScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2240
    iget-boolean v0, p0, Landroid/app/ActivityManager$TaskSnapshot;->mIsRealSnapshot:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2241
    iget v0, p0, Landroid/app/ActivityManager$TaskSnapshot;->mWindowingMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2242
    iget v0, p0, Landroid/app/ActivityManager$TaskSnapshot;->mSystemUiVisibility:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2243
    iget-boolean v0, p0, Landroid/app/ActivityManager$TaskSnapshot;->mIsTranslucent:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2244
    return-void
.end method
