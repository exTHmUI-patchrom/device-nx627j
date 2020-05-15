.class public Landroid/app/ActivityManager$TaskDescription;
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
    name = "TaskDescription"
.end annotation


# static fields
.field private static final ATTR_TASKDESCRIPTIONCOLOR_BACKGROUND:Ljava/lang/String; = "task_description_colorBackground"

.field private static final ATTR_TASKDESCRIPTIONCOLOR_PRIMARY:Ljava/lang/String; = "task_description_color"

.field private static final ATTR_TASKDESCRIPTIONICON_FILENAME:Ljava/lang/String; = "task_description_icon_filename"

.field private static final ATTR_TASKDESCRIPTIONICON_RESOURCE:Ljava/lang/String; = "task_description_icon_resource"

.field private static final ATTR_TASKDESCRIPTIONLABEL:Ljava/lang/String; = "task_description_label"

.field public static final ATTR_TASKDESCRIPTION_PREFIX:Ljava/lang/String; = "task_description_"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/ActivityManager$TaskDescription;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mColorBackground:I

.field private mColorPrimary:I

.field private mIcon:Landroid/graphics/Bitmap;

.field private mIconFilename:Ljava/lang/String;

.field private mIconRes:I

.field private mLabel:Ljava/lang/String;

.field private mNavigationBarColor:I

.field private mStatusBarColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1437
    new-instance v0, Landroid/app/ActivityManager$TaskDescription$1;

    invoke-direct {v0}, Landroid/app/ActivityManager$TaskDescription$1;-><init>()V

    sput-object v0, Landroid/app/ActivityManager$TaskDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 1146
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;ILjava/lang/String;IIII)V

    .line 1147
    return-void
.end method

.method public constructor <init>(Landroid/app/ActivityManager$TaskDescription;)V
    .locals 0
    .param p1, "td"    # Landroid/app/ActivityManager$TaskDescription;

    .line 1165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1166
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$TaskDescription;->copyFrom(Landroid/app/ActivityManager$TaskDescription;)V

    .line 1167
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .line 1206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1207
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$TaskDescription;->readFromParcel(Landroid/os/Parcel;)V

    .line 1208
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/ActivityManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/app/ActivityManager$1;

    .line 1054
    invoke-direct {p0, p1}, Landroid/app/ActivityManager$TaskDescription;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 9
    .param p1, "label"    # Ljava/lang/String;

    .line 1139
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;ILjava/lang/String;IIII)V

    .line 1140
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 9
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "iconRes"    # I

    .line 1130
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v8}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;ILjava/lang/String;IIII)V

    .line 1131
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 9
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "iconRes"    # I
    .param p3, "colorPrimary"    # I

    .line 1104
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v8}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;ILjava/lang/String;IIII)V

    .line 1105
    if-eqz p3, :cond_1

    invoke-static {p3}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1106
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "A TaskDescription\'s primary color should be opaque"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1108
    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 9
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "icon"    # Landroid/graphics/Bitmap;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1119
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v8}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;ILjava/lang/String;IIII)V

    .line 1120
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 9
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "icon"    # Landroid/graphics/Bitmap;
    .param p3, "colorPrimary"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1088
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v8}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;ILjava/lang/String;IIII)V

    .line 1089
    if-eqz p3, :cond_1

    invoke-static {p3}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1090
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "A TaskDescription\'s primary color should be opaque"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1092
    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;ILjava/lang/String;IIII)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "iconRes"    # I
    .param p4, "iconFilename"    # Ljava/lang/String;
    .param p5, "colorPrimary"    # I
    .param p6, "colorBackground"    # I
    .param p7, "statusBarColor"    # I
    .param p8, "navigationBarColor"    # I

    .line 1151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1152
    iput-object p1, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    .line 1153
    iput-object p2, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/Bitmap;

    .line 1154
    iput p3, p0, Landroid/app/ActivityManager$TaskDescription;->mIconRes:I

    .line 1155
    iput-object p4, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    .line 1156
    iput p5, p0, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    .line 1157
    iput p6, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    .line 1158
    iput p7, p0, Landroid/app/ActivityManager$TaskDescription;->mStatusBarColor:I

    .line 1159
    iput p8, p0, Landroid/app/ActivityManager$TaskDescription;->mNavigationBarColor:I

    .line 1160
    return-void
.end method

.method public static loadTaskDescriptionIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "iconFilename"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .line 1318
    if-eqz p0, :cond_0

    .line 1320
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/app/IActivityManager;->getTaskDescriptionIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1322
    :catch_0
    move-exception v0

    .line 1323
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1326
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public copyFrom(Landroid/app/ActivityManager$TaskDescription;)V
    .locals 1
    .param p1, "other"    # Landroid/app/ActivityManager$TaskDescription;

    .line 1174
    iget-object v0, p1, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    .line 1175
    iget-object v0, p1, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/Bitmap;

    .line 1176
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mIconRes:I

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIconRes:I

    .line 1177
    iget-object v0, p1, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    .line 1178
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    .line 1179
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    .line 1180
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mStatusBarColor:I

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mStatusBarColor:I

    .line 1181
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mNavigationBarColor:I

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mNavigationBarColor:I

    .line 1182
    return-void
.end method

.method public copyFromPreserveHiddenFields(Landroid/app/ActivityManager$TaskDescription;)V
    .locals 1
    .param p1, "other"    # Landroid/app/ActivityManager$TaskDescription;

    .line 1190
    iget-object v0, p1, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    .line 1191
    iget-object v0, p1, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/Bitmap;

    .line 1192
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mIconRes:I

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIconRes:I

    .line 1193
    iget-object v0, p1, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    .line 1194
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    .line 1195
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    if-eqz v0, :cond_0

    .line 1196
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    .line 1198
    :cond_0
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mStatusBarColor:I

    if-eqz v0, :cond_1

    .line 1199
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mStatusBarColor:I

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mStatusBarColor:I

    .line 1201
    :cond_1
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mNavigationBarColor:I

    if-eqz v0, :cond_2

    .line 1202
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mNavigationBarColor:I

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mNavigationBarColor:I

    .line 1204
    :cond_2
    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 1396
    const/4 v0, 0x0

    return v0
.end method

.method public getBackgroundColor()I
    .locals 1

    .line 1341
    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    return v0
.end method

.method public getIcon()Landroid/graphics/Bitmap;
    .locals 2

    .line 1293
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1294
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/Bitmap;

    return-object v0

    .line 1296
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/app/ActivityManager$TaskDescription;->loadTaskDescriptionIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getIconFilename()Ljava/lang/String;
    .locals 1

    .line 1308
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getIconResource()I
    .locals 1

    .line 1302
    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIconRes:I

    return v0
.end method

.method public getInMemoryIcon()Landroid/graphics/Bitmap;
    .locals 1

    .line 1313
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 1286
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getNavigationBarColor()I
    .locals 1

    .line 1355
    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mNavigationBarColor:I

    return v0
.end method

.method public getPrimaryColor()I
    .locals 1

    .line 1333
    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    return v0
.end method

.method public getStatusBarColor()I
    .locals 1

    .line 1348
    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mStatusBarColor:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 1427
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    .line 1428
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/Bitmap;

    .line 1429
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIconRes:I

    .line 1430
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    .line 1431
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    .line 1432
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mStatusBarColor:I

    .line 1433
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mNavigationBarColor:I

    .line 1434
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    nop

    :cond_2
    iput-object v1, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    .line 1435
    return-void
.end method

.method public restoreFromXml(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "attrName"    # Ljava/lang/String;
    .param p2, "attrValue"    # Ljava/lang/String;

    .line 1381
    const-string/jumbo v0, "task_description_label"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1382
    invoke-virtual {p0, p2}, Landroid/app/ActivityManager$TaskDescription;->setLabel(Ljava/lang/String;)V

    goto :goto_0

    .line 1383
    :cond_0
    const-string/jumbo v0, "task_description_color"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x10

    if-eqz v0, :cond_1

    .line 1384
    invoke-static {p2, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager$TaskDescription;->setPrimaryColor(I)V

    goto :goto_0

    .line 1385
    :cond_1
    const-string/jumbo v0, "task_description_colorBackground"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1386
    invoke-static {p2, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager$TaskDescription;->setBackgroundColor(I)V

    goto :goto_0

    .line 1387
    :cond_2
    const-string/jumbo v0, "task_description_icon_filename"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1388
    invoke-virtual {p0, p2}, Landroid/app/ActivityManager$TaskDescription;->setIconFilename(Ljava/lang/String;)V

    goto :goto_0

    .line 1389
    :cond_3
    const-string/jumbo v0, "task_description_icon_resource"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1390
    const/16 v0, 0xa

    invoke-static {p2, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager$TaskDescription;->setIcon(I)V

    .line 1392
    :cond_4
    :goto_0
    return-void
.end method

.method public saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1360
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1361
    const-string/jumbo v0, "task_description_label"

    iget-object v2, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1363
    :cond_0
    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    if-eqz v0, :cond_1

    .line 1364
    const-string/jumbo v0, "task_description_color"

    iget v2, p0, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    .line 1365
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 1364
    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1367
    :cond_1
    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    if-eqz v0, :cond_2

    .line 1368
    const-string/jumbo v0, "task_description_colorBackground"

    iget v2, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    .line 1369
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 1368
    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1371
    :cond_2
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1372
    const-string/jumbo v0, "task_description_icon_filename"

    iget-object v2, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1374
    :cond_3
    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIconRes:I

    if-eqz v0, :cond_4

    .line 1375
    const-string/jumbo v0, "task_description_icon_resource"

    iget v2, p0, Landroid/app/ActivityManager$TaskDescription;->mIconRes:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1377
    :cond_4
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 2
    .param p1, "backgroundColor"    # I

    .line 1236
    if-eqz p1, :cond_1

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1237
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "A TaskDescription\'s background color should be opaque"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1239
    :cond_1
    :goto_0
    iput p1, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    .line 1240
    return-void
.end method

.method public setIcon(I)V
    .locals 0
    .param p1, "iconRes"    # I

    .line 1269
    iput p1, p0, Landroid/app/ActivityManager$TaskDescription;->mIconRes:I

    .line 1270
    return-void
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .line 1261
    iput-object p1, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/Bitmap;

    .line 1262
    return-void
.end method

.method public setIconFilename(Ljava/lang/String;)V
    .locals 1
    .param p1, "iconFilename"    # Ljava/lang/String;

    .line 1278
    iput-object p1, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    .line 1279
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/Bitmap;

    .line 1280
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .line 1215
    iput-object p1, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    .line 1216
    return-void
.end method

.method public setNavigationBarColor(I)V
    .locals 0
    .param p1, "navigationBarColor"    # I

    .line 1253
    iput p1, p0, Landroid/app/ActivityManager$TaskDescription;->mNavigationBarColor:I

    .line 1254
    return-void
.end method

.method public setPrimaryColor(I)V
    .locals 2
    .param p1, "primaryColor"    # I

    .line 1224
    if-eqz p1, :cond_1

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1225
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "A TaskDescription\'s primary color should be opaque"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1227
    :cond_1
    :goto_0
    iput p1, p0, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    .line 1228
    return-void
.end method

.method public setStatusBarColor(I)V
    .locals 0
    .param p1, "statusBarColor"    # I

    .line 1246
    iput p1, p0, Landroid/app/ActivityManager$TaskDescription;->mStatusBarColor:I

    .line 1247
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskDescription Label: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Icon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " IconRes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/ActivityManager$TaskDescription;->mIconRes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " IconFilename: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " colorPrimary: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " colorBackground: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " statusBarColor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " navigationBarColor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/ActivityManager$TaskDescription;->mNavigationBarColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1401
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1402
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 1404
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1405
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1407
    :goto_0
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 1408
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 1410
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1411
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, v2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1413
    :goto_1
    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIconRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1414
    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1415
    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1416
    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mStatusBarColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1417
    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mNavigationBarColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1418
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 1419
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 1421
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1422
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1424
    :goto_2
    return-void
.end method
