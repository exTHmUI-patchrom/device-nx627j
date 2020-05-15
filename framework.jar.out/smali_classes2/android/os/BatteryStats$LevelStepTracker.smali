.class public final Landroid/os/BatteryStats$LevelStepTracker;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LevelStepTracker"
.end annotation


# instance fields
.field public mLastStepTime:J

.field public mNumStepDurations:I

.field public final mStepDurations:[J


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "maxLevelSteps"    # I

    .line 1041
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1037
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    .line 1042
    new-array v0, p1, [J

    iput-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    .line 1043
    return-void
.end method

.method public constructor <init>(I[J)V
    .locals 2
    .param p1, "numSteps"    # I
    .param p2, "steps"    # [J

    .line 1045
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1037
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    .line 1046
    iput p1, p0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 1047
    new-array v0, p1, [J

    iput-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    .line 1048
    iget-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    const/4 v1, 0x0

    invoke-static {p2, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1049
    return-void
.end method

.method private appendHex(JILjava/lang/StringBuilder;)V
    .locals 5
    .param p1, "val"    # J
    .param p3, "topOffset"    # I
    .param p4, "out"    # Ljava/lang/StringBuilder;

    .line 1071
    const/4 v0, 0x0

    .line 1072
    .local v0, "hasData":Z
    :goto_0
    if-ltz p3, :cond_2

    .line 1073
    shr-long v1, p1, p3

    const-wide/16 v3, 0xf

    and-long/2addr v1, v3

    long-to-int v1, v1

    .line 1074
    .local v1, "digit":I
    add-int/lit8 p3, p3, -0x4

    .line 1075
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 1076
    goto :goto_0

    .line 1078
    :cond_0
    const/4 v0, 0x1

    .line 1079
    if-ltz v1, :cond_1

    const/16 v2, 0x9

    if-gt v1, v2, :cond_1

    .line 1080
    const/16 v2, 0x30

    add-int/2addr v2, v1

    int-to-char v2, v2

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1082
    :cond_1
    const/16 v2, 0x61

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, -0xa

    int-to-char v2, v2

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1084
    .end local v1    # "digit":I
    :goto_1
    goto :goto_0

    .line 1085
    :cond_2
    return-void
.end method


# virtual methods
.method public addLevelSteps(IJJ)V
    .locals 19
    .param p1, "numStepLevels"    # I
    .param p2, "modeBits"    # J
    .param p4, "elapsedRealtime"    # J

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1284
    move-wide/from16 v2, p4

    iget v4, v0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 1285
    .local v4, "stepCount":I
    iget-wide v5, v0, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    .line 1286
    .local v5, "lastStepTime":J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-ltz v7, :cond_2

    if-lez v1, :cond_2

    .line 1287
    iget-object v7, v0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    .line 1288
    .local v7, "steps":[J
    sub-long v8, v2, v5

    .line 1289
    .local v8, "duration":J
    const/4 v10, 0x0

    move-wide v11, v8

    move v8, v10

    .local v8, "i":I
    .local v11, "duration":J
    :goto_0
    if-ge v8, v1, :cond_1

    .line 1290
    array-length v9, v7

    const/4 v13, 0x1

    sub-int/2addr v9, v13

    invoke-static {v7, v10, v7, v13, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1291
    sub-int v9, v1, v8

    int-to-long v13, v9

    div-long v13, v11, v13

    .line 1292
    .local v13, "thisDuration":J
    sub-long/2addr v11, v13

    .line 1293
    const-wide v15, 0xffffffffffL

    cmp-long v9, v13, v15

    if-lez v9, :cond_0

    .line 1294
    const-wide v13, 0xffffffffffL

    .line 1296
    :cond_0
    or-long v17, v13, p2

    aput-wide v17, v7, v10

    .line 1289
    .end local v13    # "thisDuration":J
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1298
    .end local v8    # "i":I
    :cond_1
    add-int/2addr v4, v1

    .line 1299
    array-length v8, v7

    if-le v4, v8, :cond_2

    .line 1300
    array-length v4, v7

    .line 1303
    .end local v7    # "steps":[J
    .end local v11    # "duration":J
    :cond_2
    iput v4, v0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 1304
    iput-wide v2, v0, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    .line 1305
    return-void
.end method

.method public clearTime()V
    .locals 2

    .line 1202
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    .line 1203
    return-void
.end method

.method public computeTimeEstimate(JJ[I)J
    .locals 21
    .param p1, "modesOfInterest"    # J
    .param p3, "modeValues"    # J
    .param p5, "outNumOfInterest"    # [I

    move-object/from16 v0, p0

    .line 1248
    iget-object v1, v0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    .line 1249
    .local v1, "steps":[J
    iget v2, v0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 1250
    .local v2, "count":I
    const-wide/16 v3, -0x1

    if-gtz v2, :cond_0

    .line 1251
    return-wide v3

    .line 1253
    :cond_0
    const-wide/16 v5, 0x0

    .line 1254
    .local v5, "total":J
    const/4 v7, 0x0

    .line 1255
    .local v7, "numOfInterest":I
    const/4 v8, 0x0

    move-wide v9, v5

    move v5, v8

    .local v5, "i":I
    .local v9, "total":J
    :goto_0
    if-ge v5, v2, :cond_2

    .line 1256
    aget-wide v11, v1, v5

    const-wide/high16 v13, 0xff000000000000L

    and-long/2addr v11, v13

    const/16 v6, 0x30

    shr-long/2addr v11, v6

    .line 1258
    .local v11, "initMode":J
    aget-wide v13, v1, v5

    const-wide/high16 v15, -0x100000000000000L

    and-long/2addr v13, v15

    const/16 v6, 0x38

    shr-long/2addr v13, v6

    .line 1261
    .local v13, "modMode":J
    and-long v15, v13, p1

    const-wide/16 v17, 0x0

    cmp-long v6, v15, v17

    if-nez v6, :cond_1

    .line 1263
    and-long v15, v11, p1

    cmp-long v6, v15, p3

    if-nez v6, :cond_1

    .line 1265
    add-int/lit8 v7, v7, 0x1

    .line 1266
    aget-wide v15, v1, v5

    const-wide v19, 0xffffffffffL

    and-long v15, v15, v19

    add-long/2addr v9, v15

    .line 1255
    .end local v11    # "initMode":J
    .end local v13    # "modMode":J
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1270
    .end local v5    # "i":I
    :cond_2
    if-gtz v7, :cond_3

    .line 1271
    return-wide v3

    .line 1274
    :cond_3
    if-eqz p5, :cond_4

    .line 1275
    aput v7, p5, v8

    .line 1280
    :cond_4
    int-to-long v3, v7

    div-long v3, v9, v3

    const-wide/16 v5, 0x64

    mul-long/2addr v3, v5

    return-wide v3
.end method

.method public computeTimePerLevel()J
    .locals 9

    .line 1206
    iget-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    .line 1207
    .local v0, "steps":[J
    iget v1, p0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 1210
    .local v1, "numSteps":I
    if-gtz v1, :cond_0

    .line 1211
    const-wide/16 v2, -0x1

    return-wide v2

    .line 1213
    :cond_0
    const-wide/16 v2, 0x0

    .line 1214
    .local v2, "total":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_1

    .line 1215
    aget-wide v5, v0, v4

    const-wide v7, 0xffffffffffL

    and-long/2addr v5, v7

    add-long/2addr v2, v5

    .line 1214
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1217
    .end local v4    # "i":I
    :cond_1
    int-to-long v4, v1

    div-long v4, v2, v4

    return-wide v4
.end method

.method public decodeEntryAt(ILjava/lang/String;)V
    .locals 25
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 1127
    move-object/from16 v0, p2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 1128
    .local v1, "N":I
    const/4 v2, 0x0

    .line 1130
    .local v2, "i":I
    const-wide/16 v3, 0x0

    move-wide v5, v3

    .line 1131
    .local v5, "out":J
    :goto_0
    const/16 v7, 0x2d

    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move v9, v8

    .local v9, "c":C
    if-eq v8, v7, :cond_0

    .line 1132
    add-int/lit8 v2, v2, 0x1

    .line 1133
    sparse-switch v9, :sswitch_data_0

    goto :goto_1

    .line 1140
    :sswitch_0
    const-wide/high16 v7, 0x3000000000000L

    or-long/2addr v5, v7

    .line 1142
    goto :goto_1

    .line 1143
    :sswitch_1
    const-wide/high16 v7, 0x4000000000000L

    or-long/2addr v5, v7

    .line 1145
    goto :goto_1

    .line 1136
    :sswitch_2
    const-wide/high16 v7, 0x1000000000000L

    or-long/2addr v5, v7

    .line 1137
    goto :goto_1

    .line 1146
    :sswitch_3
    const-wide/high16 v7, 0x8000000000000L

    or-long/2addr v5, v7

    .line 1148
    goto :goto_1

    .line 1134
    :sswitch_4
    or-long/2addr v5, v3

    .line 1135
    goto :goto_1

    .line 1138
    :sswitch_5
    const-wide/high16 v7, 0x2000000000000L

    or-long/2addr v5, v7

    .line 1139
    goto :goto_1

    .line 1155
    :sswitch_6
    const-wide/high16 v7, 0x300000000000000L    # 3.13151306251402E-294

    or-long/2addr v5, v7

    .line 1157
    goto :goto_1

    .line 1158
    :sswitch_7
    const-wide/high16 v7, 0x400000000000000L

    or-long/2addr v5, v7

    .line 1160
    goto :goto_1

    .line 1151
    :sswitch_8
    const-wide/high16 v7, 0x100000000000000L

    or-long/2addr v5, v7

    .line 1152
    goto :goto_1

    .line 1161
    :sswitch_9
    const-wide/high16 v7, 0x800000000000000L

    or-long/2addr v5, v7

    goto :goto_1

    .line 1149
    :sswitch_a
    or-long/2addr v5, v3

    .line 1150
    goto :goto_1

    .line 1153
    :sswitch_b
    const-wide/high16 v7, 0x200000000000000L

    or-long/2addr v5, v7

    .line 1154
    nop

    .line 1163
    :goto_1
    goto :goto_0

    .line 1166
    .end local v9    # "c":C
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 1167
    move-wide v8, v3

    .line 1168
    .local v8, "level":J
    :goto_2
    const/16 v10, 0x46

    const/16 v11, 0x66

    const/16 v12, 0x39

    const/4 v13, 0x4

    const/16 v14, 0x41

    const/16 v15, 0x61

    const/16 v3, 0x30

    if-ge v2, v1, :cond_4

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move/from16 v18, v4

    .local v18, "c":C
    if-eq v4, v7, :cond_4

    .line 1169
    add-int/lit8 v2, v2, 0x1

    .line 1170
    shl-long/2addr v8, v13

    .line 1171
    move/from16 v4, v18

    if-lt v4, v3, :cond_2

    .end local v18    # "c":C
    .local v4, "c":C
    if-gt v4, v12, :cond_2

    .line 1172
    add-int/lit8 v3, v4, -0x30

    int-to-long v10, v3

    add-long/2addr v8, v10

    .line 1167
    .end local v4    # "c":C
    :cond_1
    :goto_3
    const-wide/16 v3, 0x0

    goto :goto_2

    .line 1173
    .restart local v4    # "c":C
    :cond_2
    if-lt v4, v15, :cond_3

    if-gt v4, v11, :cond_3

    .line 1174
    add-int/lit8 v18, v4, -0x61

    add-int/lit8 v3, v18, 0xa

    int-to-long v10, v3

    add-long/2addr v8, v10

    goto :goto_3

    .line 1175
    :cond_3
    if-lt v4, v14, :cond_1

    if-gt v4, v10, :cond_1

    .line 1176
    add-int/lit8 v18, v4, -0x41

    add-int/lit8 v3, v18, 0xa

    int-to-long v10, v3

    add-long/2addr v8, v10

    goto :goto_3

    .line 1179
    .end local v4    # "c":C
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 1180
    const/16 v4, 0x28

    shl-long v18, v8, v4

    const-wide v20, 0xff0000000000L

    and-long v18, v18, v20

    or-long v4, v5, v18

    .line 1181
    .end local v5    # "out":J
    .local v4, "out":J
    const-wide/16 v16, 0x0

    .line 1182
    .local v16, "duration":J
    :goto_4
    if-ge v2, v1, :cond_8

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move/from16 v22, v6

    .local v22, "c":C
    if-eq v6, v7, :cond_8

    .line 1183
    add-int/lit8 v2, v2, 0x1

    .line 1184
    shl-long v16, v16, v13

    .line 1185
    move/from16 v6, v22

    if-lt v6, v3, :cond_6

    .end local v22    # "c":C
    .local v6, "c":C
    if-gt v6, v12, :cond_6

    .line 1186
    add-int/lit8 v3, v6, -0x30

    move-wide/from16 v23, v8

    int-to-long v7, v3

    .end local v8    # "level":J
    .local v23, "level":J
    add-long v16, v16, v7

    .line 1181
    .end local v6    # "c":C
    .end local v23    # "level":J
    .restart local v8    # "level":J
    :cond_5
    :goto_5
    move-wide/from16 v8, v23

    const/16 v3, 0x30

    const/16 v7, 0x2d

    goto :goto_4

    .line 1187
    .restart local v6    # "c":C
    :cond_6
    move-wide/from16 v23, v8

    .end local v8    # "level":J
    .restart local v23    # "level":J
    if-lt v6, v15, :cond_7

    if-gt v6, v11, :cond_7

    .line 1188
    add-int/lit8 v22, v6, -0x61

    add-int/lit8 v3, v22, 0xa

    int-to-long v7, v3

    add-long v16, v16, v7

    goto :goto_5

    .line 1189
    :cond_7
    if-lt v6, v14, :cond_5

    if-gt v6, v10, :cond_5

    .line 1190
    add-int/lit8 v22, v6, -0x41

    add-int/lit8 v3, v22, 0xa

    int-to-long v7, v3

    add-long v16, v16, v7

    goto :goto_5

    .line 1193
    .end local v6    # "c":C
    .end local v23    # "level":J
    .restart local v8    # "level":J
    :cond_8
    move-wide/from16 v23, v8

    .end local v8    # "level":J
    .restart local v23    # "level":J
    move-object/from16 v3, p0

    iget-object v6, v3, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    const-wide v7, 0xffffffffffL

    and-long v7, v16, v7

    or-long/2addr v7, v4

    aput-wide v7, v6, p1

    .line 1194
    return-void

    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_b
        0x46 -> :sswitch_a
        0x49 -> :sswitch_9
        0x4f -> :sswitch_8
        0x50 -> :sswitch_7
        0x5a -> :sswitch_6
        0x64 -> :sswitch_5
        0x66 -> :sswitch_4
        0x69 -> :sswitch_3
        0x6f -> :sswitch_2
        0x70 -> :sswitch_1
        0x7a -> :sswitch_0
    .end sparse-switch
.end method

.method public encodeEntryAt(ILjava/lang/StringBuilder;)V
    .locals 11
    .param p1, "index"    # I
    .param p2, "out"    # Ljava/lang/StringBuilder;

    .line 1088
    iget-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    aget-wide v0, v0, p1

    .line 1089
    .local v0, "item":J
    const-wide v2, 0xffffffffffL

    and-long/2addr v2, v0

    .line 1090
    .local v2, "duration":J
    const-wide v4, 0xff0000000000L

    and-long/2addr v4, v0

    const/16 v6, 0x28

    shr-long/2addr v4, v6

    long-to-int v4, v4

    .line 1092
    .local v4, "level":I
    const-wide/high16 v5, 0xff000000000000L

    and-long/2addr v5, v0

    const/16 v7, 0x30

    shr-long/2addr v5, v7

    long-to-int v5, v5

    .line 1094
    .local v5, "initMode":I
    const-wide/high16 v6, -0x100000000000000L

    and-long/2addr v6, v0

    const/16 v8, 0x38

    shr-long/2addr v6, v8

    long-to-int v6, v6

    .line 1096
    .local v6, "modMode":I
    and-int/lit8 v7, v5, 0x3

    add-int/lit8 v7, v7, 0x1

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    .line 1100
    :pswitch_0
    const/16 v7, 0x7a

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1099
    :pswitch_1
    const/16 v7, 0x64

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1098
    :pswitch_2
    const/16 v7, 0x6f

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1097
    :pswitch_3
    const/16 v7, 0x66

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1102
    :goto_0
    and-int/lit8 v7, v5, 0x4

    if-eqz v7, :cond_0

    .line 1103
    const/16 v7, 0x70

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1105
    :cond_0
    and-int/lit8 v7, v5, 0x8

    if-eqz v7, :cond_1

    .line 1106
    const/16 v7, 0x69

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1108
    :cond_1
    and-int/lit8 v7, v6, 0x3

    add-int/lit8 v7, v7, 0x1

    packed-switch v7, :pswitch_data_1

    goto :goto_1

    .line 1112
    :pswitch_4
    const/16 v7, 0x5a

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1111
    :pswitch_5
    const/16 v7, 0x44

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1110
    :pswitch_6
    const/16 v7, 0x4f

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1109
    :pswitch_7
    const/16 v7, 0x46

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1114
    :goto_1
    and-int/lit8 v7, v6, 0x4

    if-eqz v7, :cond_2

    .line 1115
    const/16 v7, 0x50

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1117
    :cond_2
    and-int/lit8 v7, v6, 0x8

    if-eqz v7, :cond_3

    .line 1118
    const/16 v7, 0x49

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1120
    :cond_3
    const/16 v7, 0x2d

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1121
    int-to-long v8, v4

    const/4 v10, 0x4

    invoke-direct {p0, v8, v9, v10, p2}, Landroid/os/BatteryStats$LevelStepTracker;->appendHex(JILjava/lang/StringBuilder;)V

    .line 1122
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1123
    const/16 v7, 0x24

    invoke-direct {p0, v2, v3, v7, p2}, Landroid/os/BatteryStats$LevelStepTracker;->appendHex(JILjava/lang/StringBuilder;)V

    .line 1124
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public getDurationAt(I)J
    .locals 4
    .param p1, "index"    # I

    .line 1052
    iget-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    aget-wide v0, v0, p1

    const-wide v2, 0xffffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public getInitModeAt(I)I
    .locals 4
    .param p1, "index"    # I

    .line 1061
    iget-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    aget-wide v0, v0, p1

    const-wide/high16 v2, 0xff000000000000L

    and-long/2addr v0, v2

    const/16 v2, 0x30

    shr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getLevelAt(I)I
    .locals 4
    .param p1, "index"    # I

    .line 1056
    iget-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    aget-wide v0, v0, p1

    const-wide v2, 0xff0000000000L

    and-long/2addr v0, v2

    const/16 v2, 0x28

    shr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getModModeAt(I)I
    .locals 4
    .param p1, "index"    # I

    .line 1066
    iget-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    aget-wide v0, v0, p1

    const-wide/high16 v2, -0x100000000000000L

    and-long/2addr v0, v2

    const/16 v2, 0x38

    shr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public init()V
    .locals 2

    .line 1197
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    .line 1198
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 1199
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1308
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1309
    .local v0, "N":I
    iget-object v1, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    array-length v1, v1

    if-gt v0, v1, :cond_1

    .line 1312
    iput v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 1313
    const/4 v1, 0x0

    .line 1313
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1314
    iget-object v2, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    aput-wide v3, v2, v1

    .line 1313
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1316
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 1310
    :cond_1
    new-instance v1, Landroid/os/ParcelFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "more step durations than available: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "out"    # Landroid/os/Parcel;

    .line 1319
    iget v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 1320
    .local v0, "N":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1321
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1322
    iget-object v2, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    aget-wide v2, v2, v1

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1321
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1324
    .end local v1    # "i":I
    :cond_0
    return-void
.end method
