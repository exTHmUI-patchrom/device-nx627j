.class Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;
.super Lcom/android/internal/widget/ExploreByTouchHelper;
.source "RadialTimePickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RadialTimePickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RadialPickerTouchHelper"
.end annotation


# instance fields
.field private final MASK_TYPE:I

.field private final MASK_VALUE:I

.field private final MINUTE_INCREMENT:I

.field private final SHIFT_TYPE:I

.field private final SHIFT_VALUE:I

.field private final TYPE_HOUR:I

.field private final TYPE_MINUTE:I

.field private final mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Landroid/widget/RadialTimePickerView;


# direct methods
.method public constructor <init>(Landroid/widget/RadialTimePickerView;)V
    .locals 0

    .line 1083
    iput-object p1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    .line 1084
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 1069
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->mTempRect:Landroid/graphics/Rect;

    .line 1071
    const/4 p1, 0x1

    iput p1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->TYPE_HOUR:I

    .line 1072
    const/4 p1, 0x2

    iput p1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->TYPE_MINUTE:I

    .line 1074
    const/4 p1, 0x0

    iput p1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->SHIFT_TYPE:I

    .line 1075
    const/16 p1, 0xf

    iput p1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->MASK_TYPE:I

    .line 1077
    const/16 p1, 0x8

    iput p1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->SHIFT_VALUE:I

    .line 1078
    const/16 p1, 0xff

    iput p1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->MASK_VALUE:I

    .line 1081
    const/4 p1, 0x5

    iput p1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->MINUTE_INCREMENT:I

    .line 1085
    return-void
.end method

.method private adjustPicker(I)V
    .locals 7
    .param p1, "step"    # I

    .line 1118
    iget-object v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v0}, Landroid/widget/RadialTimePickerView;->access$100(Landroid/widget/RadialTimePickerView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1119
    const/4 v0, 0x1

    .line 1121
    .local v0, "stepSize":I
    iget-object v1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v1}, Landroid/widget/RadialTimePickerView;->getCurrentHour()I

    move-result v1

    .line 1122
    .local v1, "currentHour24":I
    iget-object v2, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v2}, Landroid/widget/RadialTimePickerView;->access$200(Landroid/widget/RadialTimePickerView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1123
    move v2, v1

    .line 1124
    .local v2, "initialStep":I
    const/4 v3, 0x0

    .line 1125
    .local v3, "minValue":I
    const/16 v4, 0x17

    .local v4, "maxValue":I
    goto :goto_0

    .line 1127
    .end local v2    # "initialStep":I
    .end local v3    # "minValue":I
    .end local v4    # "maxValue":I
    :cond_0
    invoke-direct {p0, v1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->hour24To12(I)I

    move-result v2

    .line 1128
    .restart local v2    # "initialStep":I
    const/4 v3, 0x1

    .line 1129
    .restart local v3    # "minValue":I
    const/16 v4, 0xc

    .end local v1    # "currentHour24":I
    .restart local v4    # "maxValue":I
    :goto_0
    move v1, v4

    .line 1131
    .end local v4    # "maxValue":I
    .local v1, "maxValue":I
    goto :goto_1

    .line 1132
    .end local v0    # "stepSize":I
    .end local v1    # "maxValue":I
    .end local v2    # "initialStep":I
    .end local v3    # "minValue":I
    :cond_1
    const/4 v0, 0x5

    .line 1133
    .restart local v0    # "stepSize":I
    iget-object v1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v1}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v1

    div-int v2, v1, v0

    .line 1134
    .restart local v2    # "initialStep":I
    const/4 v3, 0x0

    .line 1135
    .restart local v3    # "minValue":I
    const/16 v1, 0x37

    .line 1138
    .restart local v1    # "maxValue":I
    :goto_1
    add-int v4, v2, p1

    mul-int/2addr v4, v0

    .line 1139
    .local v4, "nextValue":I
    invoke-static {v4, v3, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v5

    .line 1140
    .local v5, "clampedValue":I
    iget-object v6, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v6}, Landroid/widget/RadialTimePickerView;->access$100(Landroid/widget/RadialTimePickerView;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1141
    iget-object v6, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v6, v5}, Landroid/widget/RadialTimePickerView;->setCurrentHour(I)V

    goto :goto_2

    .line 1143
    :cond_2
    iget-object v6, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v6, v5}, Landroid/widget/RadialTimePickerView;->setCurrentMinute(I)V

    .line 1145
    :goto_2
    return-void
.end method

.method private getBoundsForVirtualView(ILandroid/graphics/Rect;)V
    .locals 13
    .param p1, "virtualViewId"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 1313
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getTypeFromId(I)I

    move-result v0

    .line 1314
    .local v0, "type":I
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getValueFromId(I)I

    move-result v1

    .line 1317
    .local v1, "value":I
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 1318
    iget-object v3, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v3, v1}, Landroid/widget/RadialTimePickerView;->access$900(Landroid/widget/RadialTimePickerView;I)Z

    move-result v3

    .line 1319
    .local v3, "innerCircle":Z
    if-eqz v3, :cond_0

    .line 1320
    iget-object v4, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v4}, Landroid/widget/RadialTimePickerView;->access$1000(Landroid/widget/RadialTimePickerView;)I

    move-result v4

    iget-object v5, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v5}, Landroid/widget/RadialTimePickerView;->access$1100(Landroid/widget/RadialTimePickerView;)[I

    move-result-object v5

    aget v2, v5, v2

    sub-int/2addr v4, v2

    int-to-float v2, v4

    .line 1321
    .local v2, "centerRadius":F
    iget-object v4, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v4}, Landroid/widget/RadialTimePickerView;->access$1200(Landroid/widget/RadialTimePickerView;)I

    move-result v4

    int-to-float v4, v4

    .local v4, "radius":F
    goto :goto_0

    .line 1323
    .end local v2    # "centerRadius":F
    .end local v4    # "radius":F
    :cond_0
    iget-object v2, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v2}, Landroid/widget/RadialTimePickerView;->access$1000(Landroid/widget/RadialTimePickerView;)I

    move-result v2

    iget-object v4, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v4}, Landroid/widget/RadialTimePickerView;->access$1100(Landroid/widget/RadialTimePickerView;)[I

    move-result-object v4

    const/4 v5, 0x0

    aget v4, v4, v5

    sub-int/2addr v2, v4

    int-to-float v2, v2

    .line 1324
    .restart local v2    # "centerRadius":F
    iget-object v4, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v4}, Landroid/widget/RadialTimePickerView;->access$1200(Landroid/widget/RadialTimePickerView;)I

    move-result v4

    int-to-float v4, v4

    .line 1327
    .restart local v4    # "radius":F
    :goto_0
    iget-object v5, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v5, v1}, Landroid/widget/RadialTimePickerView;->access$1300(Landroid/widget/RadialTimePickerView;I)I

    move-result v5

    int-to-float v3, v5

    .line 1328
    .local v3, "degrees":F
    goto :goto_1

    .end local v2    # "centerRadius":F
    .end local v3    # "degrees":F
    .end local v4    # "radius":F
    :cond_1
    if-ne v0, v2, :cond_2

    .line 1329
    iget-object v2, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v2}, Landroid/widget/RadialTimePickerView;->access$1000(Landroid/widget/RadialTimePickerView;)I

    move-result v2

    iget-object v4, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v4}, Landroid/widget/RadialTimePickerView;->access$1100(Landroid/widget/RadialTimePickerView;)[I

    move-result-object v4

    aget v3, v4, v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 1330
    .restart local v2    # "centerRadius":F
    iget-object v3, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v3, v1}, Landroid/widget/RadialTimePickerView;->access$1400(Landroid/widget/RadialTimePickerView;I)I

    move-result v3

    int-to-float v3, v3

    .line 1331
    .restart local v3    # "degrees":F
    iget-object v4, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v4}, Landroid/widget/RadialTimePickerView;->access$1200(Landroid/widget/RadialTimePickerView;)I

    move-result v4

    int-to-float v4, v4

    .restart local v4    # "radius":F
    goto :goto_1

    .line 1334
    .end local v2    # "centerRadius":F
    .end local v3    # "degrees":F
    .end local v4    # "radius":F
    :cond_2
    const/4 v2, 0x0

    .line 1335
    .restart local v2    # "centerRadius":F
    const/4 v3, 0x0

    .line 1336
    .restart local v3    # "degrees":F
    const/4 v4, 0x0

    .line 1339
    .restart local v4    # "radius":F
    :goto_1
    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    .line 1340
    .local v5, "radians":D
    iget-object v7, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v7}, Landroid/widget/RadialTimePickerView;->access$1500(Landroid/widget/RadialTimePickerView;)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    .line 1341
    .local v7, "xCenter":F
    iget-object v8, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v8}, Landroid/widget/RadialTimePickerView;->access$1600(Landroid/widget/RadialTimePickerView;)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    double-to-float v9, v9

    mul-float/2addr v9, v2

    sub-float/2addr v8, v9

    .line 1343
    .local v8, "yCenter":F
    sub-float v9, v7, v4

    float-to-int v9, v9

    sub-float v10, v8, v4

    float-to-int v10, v10

    add-float v11, v7, v4

    float-to-int v11, v11

    add-float v12, v8, v4

    float-to-int v12, v12

    invoke-virtual {p2, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 1345
    return-void
.end method

.method private getCircularDiff(III)I
    .locals 3
    .param p1, "first"    # I
    .param p2, "second"    # I
    .param p3, "max"    # I

    .line 1191
    sub-int v0, p1, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1192
    .local v0, "diff":I
    div-int/lit8 v1, p3, 0x2

    .line 1193
    .local v1, "midpoint":I
    if-le v0, v1, :cond_0

    sub-int v2, p3, v0

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    return v2
.end method

.method private getTypeFromId(I)I
    .locals 1
    .param p1, "id"    # I

    .line 1374
    ushr-int/lit8 v0, p1, 0x0

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method private getValueFromId(I)I
    .locals 1
    .param p1, "id"    # I

    .line 1378
    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private getVirtualViewDescription(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "type"    # I
    .param p2, "value"    # I

    .line 1349
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1352
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 1350
    :cond_1
    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1352
    .local v0, "description":Ljava/lang/CharSequence;
    :goto_1
    nop

    .line 1354
    return-object v0
.end method

.method private getVirtualViewIdAfter(II)I
    .locals 4
    .param p1, "type"    # I
    .param p2, "value"    # I

    .line 1251
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 1252
    add-int/lit8 v0, p2, 0x1

    .line 1253
    .local v0, "nextValue":I
    iget-object v1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v1}, Landroid/widget/RadialTimePickerView;->access$200(Landroid/widget/RadialTimePickerView;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x17

    goto :goto_0

    :cond_0
    const/16 v1, 0xc

    .line 1254
    .local v1, "max":I
    :goto_0
    if-gt v0, v1, :cond_1

    .line 1255
    invoke-direct {p0, p1, v0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result v2

    return v2

    .line 1257
    .end local v0    # "nextValue":I
    .end local v1    # "max":I
    :cond_1
    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 1258
    iget-object v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v0

    .line 1259
    .local v0, "current":I
    rem-int/lit8 v1, p2, 0x5

    sub-int v1, p2, v1

    .line 1260
    .local v1, "snapValue":I
    add-int/lit8 v2, v1, 0x5

    .line 1261
    .local v2, "nextValue":I
    if-ge p2, v0, :cond_3

    if-le v2, v0, :cond_3

    .line 1263
    invoke-direct {p0, p1, v0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result v3

    return v3

    .line 1264
    :cond_3
    const/16 v3, 0x3c

    if-ge v2, v3, :cond_4

    .line 1265
    invoke-direct {p0, p1, v2}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result v3

    return v3

    .line 1268
    .end local v0    # "current":I
    .end local v1    # "snapValue":I
    .end local v2    # "nextValue":I
    :cond_4
    :goto_1
    const/high16 v0, -0x80000000

    return v0
.end method

.method private hour12To24(II)I
    .locals 2
    .param p1, "hour12"    # I
    .param p2, "amOrPm"    # I

    .line 1290
    move v0, p1

    .line 1291
    .local v0, "hour24":I
    const/16 v1, 0xc

    if-ne p1, v1, :cond_0

    .line 1292
    if-nez p2, :cond_1

    .line 1293
    const/4 v0, 0x0

    goto :goto_0

    .line 1295
    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 1296
    add-int/lit8 v0, v0, 0xc

    .line 1298
    :cond_1
    :goto_0
    return v0
.end method

.method private hour24To12(I)I
    .locals 1
    .param p1, "hour24"    # I

    .line 1302
    const/16 v0, 0xc

    if-nez p1, :cond_0

    .line 1303
    return v0

    .line 1304
    :cond_0
    if-le p1, v0, :cond_1

    .line 1305
    add-int/lit8 v0, p1, -0xc

    return v0

    .line 1307
    :cond_1
    return p1
.end method

.method private isVirtualViewSelected(II)Z
    .locals 3
    .param p1, "type"    # I
    .param p2, "value"    # I

    .line 1359
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 1360
    iget-object v2, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v2}, Landroid/widget/RadialTimePickerView;->getCurrentHour()I

    move-result v2

    if-ne v2, p2, :cond_0

    move v0, v1

    nop

    .local v0, "selected":Z
    :cond_0
    :goto_0
    goto :goto_1

    .line 1361
    .end local v0    # "selected":Z
    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    .line 1362
    iget-object v2, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v2}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v2

    if-ne v2, p2, :cond_2

    move v0, v1

    nop

    :cond_2
    goto :goto_0

    .line 1364
    :cond_3
    nop

    .line 1366
    .restart local v0    # "selected":Z
    :goto_1
    return v0
.end method

.method private makeId(II)I
    .locals 2
    .param p1, "type"    # I
    .param p2, "value"    # I

    .line 1370
    shl-int/lit8 v0, p1, 0x0

    shl-int/lit8 v1, p2, 0x8

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method protected getVirtualViewAt(FF)I
    .locals 9
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 1150
    iget-object v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Landroid/widget/RadialTimePickerView;->access$300(Landroid/widget/RadialTimePickerView;FFZ)I

    move-result v0

    .line 1151
    .local v0, "degrees":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    .line 1152
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/widget/RadialTimePickerView;->access$400(II)I

    move-result v2

    rem-int/lit16 v2, v2, 0x168

    .line 1153
    .local v2, "snapDegrees":I
    iget-object v3, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v3}, Landroid/widget/RadialTimePickerView;->access$100(Landroid/widget/RadialTimePickerView;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1154
    iget-object v3, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v3, p1, p2}, Landroid/widget/RadialTimePickerView;->access$500(Landroid/widget/RadialTimePickerView;FF)Z

    move-result v3

    .line 1155
    .local v3, "isOnInnerCircle":Z
    iget-object v4, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v4, v2, v3}, Landroid/widget/RadialTimePickerView;->access$600(Landroid/widget/RadialTimePickerView;IZ)I

    move-result v4

    .line 1156
    .local v4, "hour24":I
    iget-object v5, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v5}, Landroid/widget/RadialTimePickerView;->access$200(Landroid/widget/RadialTimePickerView;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    invoke-direct {p0, v4}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->hour24To12(I)I

    move-result v5

    .line 1157
    .local v5, "hour":I
    :goto_0
    invoke-direct {p0, v1, v5}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result v1

    .line 1158
    .end local v3    # "isOnInnerCircle":Z
    .end local v4    # "hour24":I
    .end local v5    # "hour":I
    .local v1, "id":I
    goto :goto_2

    .line 1159
    .end local v1    # "id":I
    :cond_1
    iget-object v1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v1}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v1

    .line 1160
    .local v1, "current":I
    iget-object v3, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v3, v0}, Landroid/widget/RadialTimePickerView;->access$700(Landroid/widget/RadialTimePickerView;I)I

    move-result v3

    .line 1161
    .local v3, "touched":I
    iget-object v4, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v4, v2}, Landroid/widget/RadialTimePickerView;->access$700(Landroid/widget/RadialTimePickerView;I)I

    move-result v4

    .line 1165
    .local v4, "snapped":I
    const/16 v5, 0x3c

    invoke-direct {p0, v1, v3, v5}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getCircularDiff(III)I

    move-result v6

    .line 1166
    .local v6, "currentOffset":I
    invoke-direct {p0, v4, v3, v5}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getCircularDiff(III)I

    move-result v5

    .line 1168
    .local v5, "snappedOffset":I
    if-ge v6, v5, :cond_2

    .line 1169
    move v7, v1

    .local v7, "minute":I
    goto :goto_1

    .line 1171
    .end local v7    # "minute":I
    :cond_2
    move v7, v4

    .line 1173
    .restart local v7    # "minute":I
    :goto_1
    const/4 v8, 0x2

    invoke-direct {p0, v8, v7}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result v1

    .line 1175
    .end local v2    # "snapDegrees":I
    .end local v3    # "touched":I
    .end local v4    # "snapped":I
    .end local v5    # "snappedOffset":I
    .end local v6    # "currentOffset":I
    .end local v7    # "minute":I
    .local v1, "id":I
    :goto_2
    goto :goto_3

    .line 1176
    .end local v1    # "id":I
    :cond_3
    const/high16 v1, -0x80000000

    .line 1179
    .restart local v1    # "id":I
    :goto_3
    return v1
.end method

.method protected getVisibleVirtualViews(Landroid/util/IntArray;)V
    .locals 5
    .param p1, "virtualViewIds"    # Landroid/util/IntArray;

    .line 1198
    iget-object v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v0}, Landroid/widget/RadialTimePickerView;->access$100(Landroid/widget/RadialTimePickerView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1199
    iget-object v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v0}, Landroid/widget/RadialTimePickerView;->access$200(Landroid/widget/RadialTimePickerView;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 1200
    .local v0, "min":I
    iget-object v2, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v2}, Landroid/widget/RadialTimePickerView;->access$200(Landroid/widget/RadialTimePickerView;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x17

    goto :goto_0

    :cond_0
    const/16 v2, 0xc

    .line 1201
    .local v2, "max":I
    :goto_0
    move v3, v0

    .local v3, "i":I
    :goto_1
    if-gt v3, v2, :cond_1

    .line 1202
    invoke-direct {p0, v1, v3}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/util/IntArray;->add(I)V

    .line 1201
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1204
    .end local v0    # "min":I
    .end local v2    # "max":I
    .end local v3    # "i":I
    :cond_1
    goto :goto_3

    .line 1205
    :cond_2
    iget-object v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v0

    .line 1206
    .local v0, "current":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    const/16 v2, 0x3c

    if-ge v1, v2, :cond_4

    .line 1207
    const/4 v2, 0x2

    invoke-direct {p0, v2, v1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/util/IntArray;->add(I)V

    .line 1211
    if-le v0, v1, :cond_3

    add-int/lit8 v3, v1, 0x5

    if-ge v0, v3, :cond_3

    .line 1212
    invoke-direct {p0, v2, v0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/util/IntArray;->add(I)V

    .line 1206
    :cond_3
    add-int/lit8 v1, v1, 0x5

    goto :goto_2

    .line 1216
    .end local v0    # "current":I
    .end local v1    # "i":I
    :cond_4
    :goto_3
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1089
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/ExploreByTouchHelper;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1091
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1092
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1093
    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 5
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .line 1274
    const/16 v0, 0x10

    if-ne p2, v0, :cond_2

    .line 1275
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getTypeFromId(I)I

    move-result v0

    .line 1276
    .local v0, "type":I
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getValueFromId(I)I

    move-result v1

    .line 1277
    .local v1, "value":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1278
    iget-object v3, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v3}, Landroid/widget/RadialTimePickerView;->access$200(Landroid/widget/RadialTimePickerView;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v3}, Landroid/widget/RadialTimePickerView;->access$800(Landroid/widget/RadialTimePickerView;)I

    move-result v3

    invoke-direct {p0, v1, v3}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->hour12To24(II)I

    move-result v3

    .line 1279
    .local v3, "hour":I
    :goto_0
    iget-object v4, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v4, v3}, Landroid/widget/RadialTimePickerView;->setCurrentHour(I)V

    .line 1280
    return v2

    .line 1281
    .end local v3    # "hour":I
    :cond_1
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 1282
    iget-object v3, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v3, v1}, Landroid/widget/RadialTimePickerView;->setCurrentMinute(I)V

    .line 1283
    return v2

    .line 1286
    .end local v0    # "type":I
    .end local v1    # "value":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .param p1, "virtualViewId"    # I
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1220
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1222
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getTypeFromId(I)I

    move-result v0

    .line 1223
    .local v0, "type":I
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getValueFromId(I)I

    move-result v1

    .line 1224
    .local v1, "value":I
    invoke-direct {p0, v0, v1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getVirtualViewDescription(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1225
    .local v2, "description":Ljava/lang/CharSequence;
    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1226
    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 6
    .param p1, "virtualViewId"    # I
    .param p2, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1230
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1231
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1233
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getTypeFromId(I)I

    move-result v0

    .line 1234
    .local v0, "type":I
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getValueFromId(I)I

    move-result v1

    .line 1235
    .local v1, "value":I
    invoke-direct {p0, v0, v1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getVirtualViewDescription(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1236
    .local v2, "description":Ljava/lang/CharSequence;
    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1238
    iget-object v3, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v3}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getBoundsForVirtualView(ILandroid/graphics/Rect;)V

    .line 1239
    iget-object v3, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 1241
    invoke-direct {p0, v0, v1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->isVirtualViewSelected(II)Z

    move-result v3

    .line 1242
    .local v3, "selected":Z
    invoke-virtual {p2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 1244
    invoke-direct {p0, v0, v1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getVirtualViewIdAfter(II)I

    move-result v4

    .line 1245
    .local v4, "nextId":I
    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_0

    .line 1246
    iget-object v5, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {p2, v5, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalBefore(Landroid/view/View;I)V

    .line 1248
    :cond_0
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .line 1097
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/widget/ExploreByTouchHelper;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1098
    return v1

    .line 1101
    :cond_0
    const/16 v0, 0x1000

    if-eq p2, v0, :cond_2

    const/16 v0, 0x2000

    if-eq p2, v0, :cond_1

    .line 1110
    const/4 v0, 0x0

    return v0

    .line 1106
    :cond_1
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->adjustPicker(I)V

    .line 1107
    return v1

    .line 1103
    :cond_2
    invoke-direct {p0, v1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->adjustPicker(I)V

    .line 1104
    return v1
.end method
