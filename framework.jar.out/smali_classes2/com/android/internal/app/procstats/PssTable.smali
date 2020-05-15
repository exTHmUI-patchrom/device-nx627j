.class public Lcom/android/internal/app/procstats/PssTable;
.super Lcom/android/internal/app/procstats/SparseMappingTable$Table;
.source "PssTable.java"


# direct methods
.method public constructor <init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V
    .locals 0
    .param p1, "tableData"    # Lcom/android/internal/app/procstats/SparseMappingTable;

    .line 40
    invoke-direct {p0, p1}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    .line 41
    return-void
.end method


# virtual methods
.method public mergeStats(IIJJJJJJJJJ)V
    .locals 27
    .param p1, "state"    # I
    .param p2, "inCount"    # I
    .param p3, "minPss"    # J
    .param p5, "avgPss"    # J
    .param p7, "maxPss"    # J
    .param p9, "minUss"    # J
    .param p11, "avgUss"    # J
    .param p13, "maxUss"    # J
    .param p15, "minRss"    # J
    .param p17, "avgRss"    # J
    .param p19, "maxRss"    # J

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-wide/from16 v2, p3

    move-wide/from16 v4, p5

    move-wide/from16 v6, p7

    move-wide/from16 v8, p9

    move-wide/from16 v10, p11

    move-wide/from16 v12, p13

    .line 70
    move/from16 v14, p1

    int-to-byte v15, v14

    const/16 v14, 0xa

    invoke-virtual {v0, v15, v14}, Lcom/android/internal/app/procstats/PssTable;->getOrAddKey(BI)I

    move-result v14

    .line 71
    .local v14, "key":I
    const/4 v15, 0x0

    invoke-virtual {v0, v14, v15}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v12

    .line 72
    .local v12, "count":J
    const-wide/16 v18, 0x0

    cmp-long v18, v12, v18

    if-nez v18, :cond_0

    .line 73
    move-wide/from16 v20, v12

    int-to-long v12, v1

    .end local v12    # "count":J
    .local v20, "count":J
    const/4 v15, 0x0

    invoke-virtual {v0, v14, v15, v12, v13}, Lcom/android/internal/app/procstats/PssTable;->setValue(IIJ)V

    .line 74
    const/4 v12, 0x1

    invoke-virtual {v0, v14, v12, v2, v3}, Lcom/android/internal/app/procstats/PssTable;->setValue(IIJ)V

    .line 75
    const/4 v12, 0x2

    invoke-virtual {v0, v14, v12, v4, v5}, Lcom/android/internal/app/procstats/PssTable;->setValue(IIJ)V

    .line 76
    const/4 v12, 0x3

    invoke-virtual {v0, v14, v12, v6, v7}, Lcom/android/internal/app/procstats/PssTable;->setValue(IIJ)V

    .line 77
    const/4 v12, 0x4

    invoke-virtual {v0, v14, v12, v8, v9}, Lcom/android/internal/app/procstats/PssTable;->setValue(IIJ)V

    .line 78
    const/4 v12, 0x5

    invoke-virtual {v0, v14, v12, v10, v11}, Lcom/android/internal/app/procstats/PssTable;->setValue(IIJ)V

    .line 79
    move-wide/from16 v10, v20

    move-wide/from16 v12, p13

    const/4 v15, 0x6

    invoke-virtual {v0, v14, v15, v12, v13}, Lcom/android/internal/app/procstats/PssTable;->setValue(IIJ)V

    .line 80
    .end local v20    # "count":J
    .local v10, "count":J
    move-wide/from16 v12, p15

    const/4 v15, 0x7

    invoke-virtual {v0, v14, v15, v12, v13}, Lcom/android/internal/app/procstats/PssTable;->setValue(IIJ)V

    .line 81
    move-wide/from16 v12, p17

    const/16 v15, 0x8

    invoke-virtual {v0, v14, v15, v12, v13}, Lcom/android/internal/app/procstats/PssTable;->setValue(IIJ)V

    .line 82
    move-wide/from16 v12, p19

    const/16 v15, 0x9

    invoke-virtual {v0, v14, v15, v12, v13}, Lcom/android/internal/app/procstats/PssTable;->setValue(IIJ)V

    .line 130
    move-wide v4, v10

    move-wide/from16 v12, p13

    goto/16 :goto_0

    .line 84
    .end local v10    # "count":J
    .restart local v12    # "count":J
    :cond_0
    move-wide v10, v12

    move-wide/from16 v12, p19

    .end local v12    # "count":J
    .restart local v10    # "count":J
    int-to-long v12, v1

    add-long/2addr v12, v10

    const/4 v15, 0x0

    invoke-virtual {v0, v14, v15, v12, v13}, Lcom/android/internal/app/procstats/PssTable;->setValue(IIJ)V

    .line 88
    const/4 v12, 0x1

    invoke-virtual {v0, v14, v12}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v16

    .line 89
    .local v16, "val":J
    cmp-long v13, v16, v2

    if-lez v13, :cond_1

    .line 90
    invoke-virtual {v0, v14, v12, v2, v3}, Lcom/android/internal/app/procstats/PssTable;->setValue(IIJ)V

    .line 93
    :cond_1
    const/4 v12, 0x2

    invoke-virtual {v0, v14, v12}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v2

    .line 94
    .end local v16    # "val":J
    .local v2, "val":J
    long-to-double v12, v2

    move-wide/from16 v22, v2

    long-to-double v2, v10

    .end local v2    # "val":J
    .local v22, "val":J
    mul-double/2addr v12, v2

    long-to-double v2, v4

    int-to-double v4, v1

    mul-double/2addr v2, v4

    add-double/2addr v12, v2

    int-to-long v2, v1

    add-long/2addr v2, v10

    long-to-double v2, v2

    div-double/2addr v12, v2

    double-to-long v2, v12

    const/4 v4, 0x2

    invoke-virtual {v0, v14, v4, v2, v3}, Lcom/android/internal/app/procstats/PssTable;->setValue(IIJ)V

    .line 97
    const/4 v2, 0x3

    invoke-virtual {v0, v14, v2}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v3

    .line 98
    .end local v22    # "val":J
    .local v3, "val":J
    cmp-long v5, v3, v6

    if-gez v5, :cond_2

    .line 99
    invoke-virtual {v0, v14, v2, v6, v7}, Lcom/android/internal/app/procstats/PssTable;->setValue(IIJ)V

    .line 102
    :cond_2
    const/4 v2, 0x4

    invoke-virtual {v0, v14, v2}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v3

    .line 103
    cmp-long v5, v3, v8

    if-lez v5, :cond_3

    .line 104
    invoke-virtual {v0, v14, v2, v8, v9}, Lcom/android/internal/app/procstats/PssTable;->setValue(IIJ)V

    .line 107
    :cond_3
    const/4 v2, 0x5

    invoke-virtual {v0, v14, v2}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v3

    .line 108
    long-to-double v12, v3

    move-wide/from16 v24, v3

    long-to-double v2, v10

    .end local v3    # "val":J
    .local v24, "val":J
    mul-double/2addr v12, v2

    move-wide v4, v10

    move-wide/from16 v2, p11

    long-to-double v10, v2

    .end local v10    # "count":J
    .local v4, "count":J
    int-to-double v6, v1

    mul-double/2addr v10, v6

    add-double/2addr v12, v10

    int-to-long v6, v1

    add-long/2addr v6, v4

    long-to-double v6, v6

    div-double/2addr v12, v6

    double-to-long v6, v12

    const/4 v10, 0x5

    invoke-virtual {v0, v14, v10, v6, v7}, Lcom/android/internal/app/procstats/PssTable;->setValue(IIJ)V

    .line 111
    const/4 v6, 0x6

    invoke-virtual {v0, v14, v6}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v10

    .line 112
    .end local v24    # "val":J
    .local v10, "val":J
    move-wide/from16 v12, p13

    cmp-long v7, v10, v12

    if-gez v7, :cond_4

    .line 113
    invoke-virtual {v0, v14, v6, v12, v13}, Lcom/android/internal/app/procstats/PssTable;->setValue(IIJ)V

    .line 116
    :cond_4
    const/4 v6, 0x7

    invoke-virtual {v0, v14, v6}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v10

    .line 117
    cmp-long v7, v10, v8

    if-lez v7, :cond_5

    .line 118
    invoke-virtual {v0, v14, v6, v8, v9}, Lcom/android/internal/app/procstats/PssTable;->setValue(IIJ)V

    .line 121
    :cond_5
    const/16 v6, 0x8

    invoke-virtual {v0, v14, v6}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v10

    .line 122
    long-to-double v6, v10

    long-to-double v8, v4

    mul-double/2addr v6, v8

    long-to-double v8, v2

    int-to-double v2, v1

    mul-double/2addr v8, v2

    add-double/2addr v6, v8

    int-to-long v2, v1

    add-long/2addr v2, v4

    long-to-double v2, v2

    div-double/2addr v6, v2

    double-to-long v2, v6

    const/16 v6, 0x8

    invoke-virtual {v0, v14, v6, v2, v3}, Lcom/android/internal/app/procstats/PssTable;->setValue(IIJ)V

    .line 125
    const/16 v2, 0x9

    invoke-virtual {v0, v14, v2}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v6

    .line 126
    .end local v10    # "val":J
    .local v6, "val":J
    cmp-long v3, v6, v12

    if-gez v3, :cond_6

    .line 127
    invoke-virtual {v0, v14, v2, v12, v13}, Lcom/android/internal/app/procstats/PssTable;->setValue(IIJ)V

    .line 130
    .end local v6    # "val":J
    :cond_6
    :goto_0
    return-void
.end method

.method public mergeStats(Lcom/android/internal/app/procstats/PssTable;)V
    .locals 27
    .param p1, "that"    # Lcom/android/internal/app/procstats/PssTable;

    .line 47
    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    move-result v1

    .line 48
    .local v1, "N":I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 49
    invoke-virtual {v0, v3}, Lcom/android/internal/app/procstats/PssTable;->getKeyAt(I)I

    move-result v4

    .line 50
    .local v4, "key":I
    invoke-static {v4}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v26

    .line 51
    .local v26, "state":I
    invoke-virtual {v0, v4, v2}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v5

    long-to-int v7, v5

    .line 52
    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v8

    const/4 v5, 0x2

    .line 53
    invoke-virtual {v0, v4, v5}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v10

    const/4 v5, 0x3

    .line 54
    invoke-virtual {v0, v4, v5}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v12

    const/4 v5, 0x4

    .line 55
    invoke-virtual {v0, v4, v5}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v14

    const/4 v5, 0x5

    .line 56
    invoke-virtual {v0, v4, v5}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v16

    const/4 v5, 0x6

    .line 57
    invoke-virtual {v0, v4, v5}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v18

    const/4 v5, 0x7

    .line 58
    invoke-virtual {v0, v4, v5}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v20

    const/16 v5, 0x8

    .line 59
    invoke-virtual {v0, v4, v5}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v22

    const/16 v5, 0x9

    .line 60
    invoke-virtual {v0, v4, v5}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v24

    .line 51
    move-object/from16 v5, p0

    move/from16 v6, v26

    invoke-virtual/range {v5 .. v25}, Lcom/android/internal/app/procstats/PssTable;->mergeStats(IIJJJJJJJJJ)V

    .line 48
    .end local v4    # "key":I
    .end local v26    # "state":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 62
    .end local v3    # "i":I
    :cond_0
    return-void
.end method
