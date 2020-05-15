.class public Landroid/app/NotificationManager$Policy;
.super Ljava/lang/Object;
.source "NotificationManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/NotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Policy"
.end annotation


# static fields
.field public static final ALL_PRIORITY_CATEGORIES:[I

.field private static final ALL_SUPPRESSED_EFFECTS:[I

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/NotificationManager$Policy;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIORITY_CATEGORY_ALARMS:I = 0x20

.field public static final PRIORITY_CATEGORY_CALLS:I = 0x8

.field public static final PRIORITY_CATEGORY_EVENTS:I = 0x2

.field public static final PRIORITY_CATEGORY_MEDIA:I = 0x40

.field public static final PRIORITY_CATEGORY_MESSAGES:I = 0x4

.field public static final PRIORITY_CATEGORY_REMINDERS:I = 0x1

.field public static final PRIORITY_CATEGORY_REPEAT_CALLERS:I = 0x10

.field public static final PRIORITY_CATEGORY_SYSTEM:I = 0x80

.field public static final PRIORITY_SENDERS_ANY:I = 0x0

.field public static final PRIORITY_SENDERS_CONTACTS:I = 0x1

.field public static final PRIORITY_SENDERS_STARRED:I = 0x2

.field private static final SCREEN_OFF_SUPPRESSED_EFFECTS:[I

.field private static final SCREEN_ON_SUPPRESSED_EFFECTS:[I

.field public static final STATE_CHANNELS_BYPASSING_DND:I = 0x1

.field public static final STATE_UNSET:I = -0x1

.field public static final SUPPRESSED_EFFECTS_UNSET:I = -0x1

.field public static final SUPPRESSED_EFFECT_AMBIENT:I = 0x80

.field public static final SUPPRESSED_EFFECT_BADGE:I = 0x40

.field public static final SUPPRESSED_EFFECT_FULL_SCREEN_INTENT:I = 0x4

.field public static final SUPPRESSED_EFFECT_LIGHTS:I = 0x8

.field public static final SUPPRESSED_EFFECT_NOTIFICATION_LIST:I = 0x100

.field public static final SUPPRESSED_EFFECT_PEEK:I = 0x10

.field public static final SUPPRESSED_EFFECT_SCREEN_OFF:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SUPPRESSED_EFFECT_SCREEN_ON:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SUPPRESSED_EFFECT_STATUS_BAR:I = 0x20


# instance fields
.field public final priorityCallSenders:I

.field public final priorityCategories:I

.field public final priorityMessageSenders:I

.field public final state:I

.field public final suppressedVisualEffects:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1057
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/app/NotificationManager$Policy;->ALL_PRIORITY_CATEGORIES:[I

    .line 1151
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/app/NotificationManager$Policy;->ALL_SUPPRESSED_EFFECTS:[I

    .line 1163
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroid/app/NotificationManager$Policy;->SCREEN_OFF_SUPPRESSED_EFFECTS:[I

    .line 1170
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Landroid/app/NotificationManager$Policy;->SCREEN_ON_SUPPRESSED_EFFECTS:[I

    .line 1499
    new-instance v0, Landroid/app/NotificationManager$Policy$1;

    invoke-direct {v0}, Landroid/app/NotificationManager$Policy$1;-><init>()V

    sput-object v0, Landroid/app/NotificationManager$Policy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    :array_0
    .array-data 4
        0x20
        0x40
        0x80
        0x1
        0x2
        0x4
        0x8
        0x10
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x100
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x4
        0x8
        0x80
    .end array-data

    :array_3
    .array-data 4
        0x2
        0x10
        0x20
        0x40
        0x100
    .end array-data
.end method

.method public constructor <init>(III)V
    .locals 6
    .param p1, "priorityCategories"    # I
    .param p2, "priorityCallSenders"    # I
    .param p3, "priorityMessageSenders"    # I

    .line 1215
    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/app/NotificationManager$Policy;-><init>(IIIII)V

    .line 1217
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1
    .param p1, "priorityCategories"    # I
    .param p2, "priorityCallSenders"    # I
    .param p3, "priorityMessageSenders"    # I
    .param p4, "suppressedVisualEffects"    # I

    .line 1249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1250
    iput p1, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    .line 1251
    iput p2, p0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    .line 1252
    iput p3, p0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    .line 1253
    iput p4, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 1254
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/NotificationManager$Policy;->state:I

    .line 1255
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0
    .param p1, "priorityCategories"    # I
    .param p2, "priorityCallSenders"    # I
    .param p3, "priorityMessageSenders"    # I
    .param p4, "suppressedVisualEffects"    # I
    .param p5, "state"    # I

    .line 1259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1260
    iput p1, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    .line 1261
    iput p2, p0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    .line 1262
    iput p3, p0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    .line 1263
    iput p4, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 1264
    iput p5, p0, Landroid/app/NotificationManager$Policy;->state:I

    .line 1265
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "source"    # Landroid/os/Parcel;

    .line 1269
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1270
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1269
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/NotificationManager$Policy;-><init>(IIIII)V

    .line 1271
    return-void
.end method

.method public static areAllVisualEffectsSuppressed(I)Z
    .locals 4
    .param p0, "effects"    # I

    .line 1353
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    sget-object v2, Landroid/app/NotificationManager$Policy;->ALL_SUPPRESSED_EFFECTS:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 1354
    sget-object v2, Landroid/app/NotificationManager$Policy;->ALL_SUPPRESSED_EFFECTS:[I

    aget v2, v2, v1

    .line 1355
    .local v2, "effect":I
    and-int v3, p0, v2

    if-nez v3, :cond_0

    .line 1356
    return v0

    .line 1353
    .end local v2    # "effect":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1359
    .end local v1    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static areAnyScreenOffEffectsSuppressed(I)Z
    .locals 4
    .param p0, "effects"    # I

    .line 1366
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    sget-object v2, Landroid/app/NotificationManager$Policy;->SCREEN_OFF_SUPPRESSED_EFFECTS:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 1367
    sget-object v2, Landroid/app/NotificationManager$Policy;->SCREEN_OFF_SUPPRESSED_EFFECTS:[I

    aget v2, v2, v1

    .line 1368
    .local v2, "effect":I
    and-int v3, p0, v2

    if-eqz v3, :cond_0

    .line 1369
    const/4 v0, 0x1

    return v0

    .line 1366
    .end local v2    # "effect":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1372
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public static areAnyScreenOnEffectsSuppressed(I)Z
    .locals 4
    .param p0, "effects"    # I

    .line 1379
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    sget-object v2, Landroid/app/NotificationManager$Policy;->SCREEN_ON_SUPPRESSED_EFFECTS:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 1380
    sget-object v2, Landroid/app/NotificationManager$Policy;->SCREEN_ON_SUPPRESSED_EFFECTS:[I

    aget v2, v2, v1

    .line 1381
    .local v2, "effect":I
    and-int v3, p0, v2

    if-eqz v3, :cond_0

    .line 1382
    const/4 v0, 0x1

    return v0

    .line 1379
    .end local v2    # "effect":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1385
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method private static bitwiseToProtoEnum(Landroid/util/proto/ProtoOutputStream;JI)V
    .locals 3
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "fieldId"    # J
    .param p3, "data"    # I

    .line 1331
    const/4 v0, 0x1

    move v1, p3

    move p3, v0

    .local v1, "data":I
    .local p3, "i":I
    :goto_0
    if-lez v1, :cond_1

    .line 1332
    and-int/lit8 v2, v1, 0x1

    if-ne v2, v0, :cond_0

    .line 1333
    invoke-virtual {p0, p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1331
    :cond_0
    add-int/lit8 p3, p3, 0x1

    ushr-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1336
    .end local p3    # "i":I
    :cond_1
    return-void
.end method

.method private static effectToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "effect"    # I

    .line 1451
    const/4 v0, -0x1

    if-eq p0, v0, :cond_7

    const/4 v0, 0x4

    if-eq p0, v0, :cond_6

    const/16 v0, 0x8

    if-eq p0, v0, :cond_5

    const/16 v0, 0x10

    if-eq p0, v0, :cond_4

    const/16 v0, 0x20

    if-eq p0, v0, :cond_3

    const/16 v0, 0x40

    if-eq p0, v0, :cond_2

    const/16 v0, 0x80

    if-eq p0, v0, :cond_1

    const/16 v0, 0x100

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 1472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1469
    :pswitch_0
    const-string v0, "SUPPRESSED_EFFECT_SCREEN_ON"

    return-object v0

    .line 1467
    :pswitch_1
    const-string v0, "SUPPRESSED_EFFECT_SCREEN_OFF"

    return-object v0

    .line 1465
    :cond_0
    const-string v0, "SUPPRESSED_EFFECT_NOTIFICATION_LIST"

    return-object v0

    .line 1463
    :cond_1
    const-string v0, "SUPPRESSED_EFFECT_AMBIENT"

    return-object v0

    .line 1461
    :cond_2
    const-string v0, "SUPPRESSED_EFFECT_BADGE"

    return-object v0

    .line 1459
    :cond_3
    const-string v0, "SUPPRESSED_EFFECT_STATUS_BAR"

    return-object v0

    .line 1457
    :cond_4
    const-string v0, "SUPPRESSED_EFFECT_PEEK"

    return-object v0

    .line 1455
    :cond_5
    const-string v0, "SUPPRESSED_EFFECT_LIGHTS"

    return-object v0

    .line 1453
    :cond_6
    const-string v0, "SUPPRESSED_EFFECT_FULL_SCREEN_INTENT"

    return-object v0

    .line 1471
    :cond_7
    const-string v0, "SUPPRESSED_EFFECTS_UNSET"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getAllSuppressedVisualEffects()I
    .locals 3

    .line 1342
    const/4 v0, 0x0

    .line 1343
    .local v0, "effects":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Landroid/app/NotificationManager$Policy;->ALL_SUPPRESSED_EFFECTS:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 1344
    sget-object v2, Landroid/app/NotificationManager$Policy;->ALL_SUPPRESSED_EFFECTS:[I

    aget v2, v2, v1

    or-int/2addr v0, v2

    .line 1343
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1346
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method public static priorityCategoriesToString(I)Ljava/lang/String;
    .locals 5
    .param p0, "priorityCategories"    # I

    .line 1433
    if-nez p0, :cond_0

    const-string v0, ""

    return-object v0

    .line 1434
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1435
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Landroid/app/NotificationManager$Policy;->ALL_PRIORITY_CATEGORIES:[I

    array-length v2, v2

    const/16 v3, 0x2c

    if-ge v1, v2, :cond_3

    .line 1436
    sget-object v2, Landroid/app/NotificationManager$Policy;->ALL_PRIORITY_CATEGORIES:[I

    aget v2, v2, v1

    .line 1437
    .local v2, "priorityCategory":I
    and-int v4, p0, v2

    if-eqz v4, :cond_2

    .line 1438
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1439
    :cond_1
    invoke-static {v2}, Landroid/app/NotificationManager$Policy;->priorityCategoryToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1441
    :cond_2
    not-int v3, v2

    and-int/2addr p0, v3

    .line 1435
    .end local v2    # "priorityCategory":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1443
    .end local v1    # "i":I
    :cond_3
    if-eqz p0, :cond_5

    .line 1444
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1445
    :cond_4
    const-string v1, "PRIORITY_CATEGORY_UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1447
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static priorityCategoryToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "priorityCategory"    # I

    .line 1477
    const/4 v0, 0x4

    if-eq p0, v0, :cond_5

    const/16 v0, 0x8

    if-eq p0, v0, :cond_4

    const/16 v0, 0x10

    if-eq p0, v0, :cond_3

    const/16 v0, 0x20

    if-eq p0, v0, :cond_2

    const/16 v0, 0x40

    if-eq p0, v0, :cond_1

    const/16 v0, 0x80

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 1486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PRIORITY_CATEGORY_UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1479
    :pswitch_0
    const-string v0, "PRIORITY_CATEGORY_EVENTS"

    return-object v0

    .line 1478
    :pswitch_1
    const-string v0, "PRIORITY_CATEGORY_REMINDERS"

    return-object v0

    .line 1485
    :cond_0
    const-string v0, "PRIORITY_CATEGORY_SYSTEM"

    return-object v0

    .line 1484
    :cond_1
    const-string v0, "PRIORITY_CATEGORY_MEDIA"

    return-object v0

    .line 1483
    :cond_2
    const-string v0, "PRIORITY_CATEGORY_ALARMS"

    return-object v0

    .line 1482
    :cond_3
    const-string v0, "PRIORITY_CATEGORY_REPEAT_CALLERS"

    return-object v0

    .line 1481
    :cond_4
    const-string v0, "PRIORITY_CATEGORY_CALLS"

    return-object v0

    .line 1480
    :cond_5
    const-string v0, "PRIORITY_CATEGORY_MESSAGES"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static prioritySendersToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "prioritySenders"    # I

    .line 1491
    packed-switch p0, :pswitch_data_0

    .line 1495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PRIORITY_SENDERS_UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1494
    :pswitch_0
    const-string v0, "PRIORITY_SENDERS_STARRED"

    return-object v0

    .line 1493
    :pswitch_1
    const-string v0, "PRIORITY_SENDERS_CONTACTS"

    return-object v0

    .line 1492
    :pswitch_2
    const-string v0, "PRIORITY_SENDERS_ANY"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static suppressedEffectsToString(I)Ljava/lang/String;
    .locals 5
    .param p0, "effects"    # I

    .line 1415
    if-gtz p0, :cond_0

    const-string v0, ""

    return-object v0

    .line 1416
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1417
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Landroid/app/NotificationManager$Policy;->ALL_SUPPRESSED_EFFECTS:[I

    array-length v2, v2

    const/16 v3, 0x2c

    if-ge v1, v2, :cond_3

    .line 1418
    sget-object v2, Landroid/app/NotificationManager$Policy;->ALL_SUPPRESSED_EFFECTS:[I

    aget v2, v2, v1

    .line 1419
    .local v2, "effect":I
    and-int v4, p0, v2

    if-eqz v4, :cond_2

    .line 1420
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1421
    :cond_1
    invoke-static {v2}, Landroid/app/NotificationManager$Policy;->effectToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1423
    :cond_2
    not-int v3, v2

    and-int/2addr p0, v3

    .line 1417
    .end local v2    # "effect":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1425
    .end local v1    # "i":I
    :cond_3
    if-eqz p0, :cond_5

    .line 1426
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1427
    :cond_4
    const-string v1, "UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1429
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static toggleEffects(I[IZ)I
    .locals 3
    .param p0, "currentEffects"    # I
    .param p1, "effects"    # [I
    .param p2, "suppress"    # Z

    .line 1403
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 1404
    aget v1, p1, v0

    .line 1405
    .local v1, "effect":I
    if-eqz p2, :cond_0

    .line 1406
    or-int/2addr p0, v1

    goto :goto_1

    .line 1408
    :cond_0
    not-int v2, v1

    and-int/2addr p0, v2

    .line 1403
    .end local v1    # "effect":I
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1411
    .end local v0    # "i":I
    :cond_1
    return p0
.end method

.method public static toggleScreenOffEffectsSuppressed(IZ)I
    .locals 1
    .param p0, "currentEffects"    # I
    .param p1, "suppress"    # Z

    .line 1392
    sget-object v0, Landroid/app/NotificationManager$Policy;->SCREEN_OFF_SUPPRESSED_EFFECTS:[I

    invoke-static {p0, v0, p1}, Landroid/app/NotificationManager$Policy;->toggleEffects(I[IZ)I

    move-result v0

    return v0
.end method

.method public static toggleScreenOnEffectsSuppressed(IZ)I
    .locals 1
    .param p0, "currentEffects"    # I
    .param p1, "suppress"    # Z

    .line 1399
    sget-object v0, Landroid/app/NotificationManager$Policy;->SCREEN_ON_SUPPRESSED_EFFECTS:[I

    invoke-static {p0, v0, p1}, Landroid/app/NotificationManager$Policy;->toggleEffects(I[IZ)I

    move-result v0

    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 1284
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 1295
    instance-of v0, p1, Landroid/app/NotificationManager$Policy;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1296
    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    .line 1297
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/app/NotificationManager$Policy;

    .line 1298
    .local v2, "other":Landroid/app/NotificationManager$Policy;
    iget v3, v2, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    iget v4, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    if-ne v3, v4, :cond_2

    iget v3, v2, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget v4, p0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    if-ne v3, v4, :cond_2

    iget v3, v2, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    iget v4, p0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    if-ne v3, v4, :cond_2

    iget v3, v2, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    iget v4, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1289
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 1290
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 1289
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationManager.Policy[priorityCategories="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    .line 1307
    invoke-static {v1}, Landroid/app/NotificationManager$Policy;->priorityCategoriesToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",priorityCallSenders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    .line 1308
    invoke-static {v1}, Landroid/app/NotificationManager$Policy;->prioritySendersToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",priorityMessageSenders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    .line 1309
    invoke-static {v1}, Landroid/app/NotificationManager$Policy;->prioritySendersToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",suppressedVisualEffects="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 1311
    invoke-static {v1}, Landroid/app/NotificationManager$Policy;->suppressedEffectsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",areChannelsBypassingDnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1312
    iget v1, p0, Landroid/app/NotificationManager$Policy;->state:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1313
    const-string/jumbo v1, "true"

    goto :goto_0

    :cond_0
    const-string v1, "false"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1306
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1275
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1276
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1277
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1278
    iget v0, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1279
    iget v0, p0, Landroid/app/NotificationManager$Policy;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1280
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 1319
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1321
    .local v0, "pToken":J
    iget v2, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    const-wide v3, 0x20e00000001L

    invoke-static {p1, v3, v4, v2}, Landroid/app/NotificationManager$Policy;->bitwiseToProtoEnum(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 1322
    iget v2, p0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    const-wide v3, 0x10e00000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1323
    iget v2, p0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    const-wide v3, 0x10e00000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1324
    iget v2, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    const-wide v3, 0x20e00000004L

    invoke-static {p1, v3, v4, v2}, Landroid/app/NotificationManager$Policy;->bitwiseToProtoEnum(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 1327
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1328
    return-void
.end method
