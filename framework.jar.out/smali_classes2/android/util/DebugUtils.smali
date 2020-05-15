.class public Landroid/util/DebugUtils;
.super Ljava/lang/Object;
.source "DebugUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .locals 3
    .param p0, "cls"    # Ljava/lang/Object;
    .param p1, "out"    # Ljava/lang/StringBuilder;

    .line 112
    if-nez p0, :cond_0

    .line 113
    const-string/jumbo v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "simpleName":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 117
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 118
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 119
    .local v1, "end":I
    if-lez v1, :cond_2

    .line 120
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 123
    .end local v1    # "end":I
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    const/16 v1, 0x7b

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 125
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .end local v0    # "simpleName":Ljava/lang/String;
    :goto_0
    return-void
.end method

.method private static constNameWithoutPrefix(Ljava/lang/String;Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 2
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .line 267
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;
    .locals 10
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 238
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    .local v0, "res":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 241
    .local v3, "flagsWasZero":Z
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    array-length v5, v4

    :goto_1
    if-ge v1, v5, :cond_4

    aget-object v6, v4, v1

    .line 242
    .local v6, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    .line 243
    .local v7, "modifiers":I
    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 244
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 246
    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v6, v8}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v8

    .line 247
    .local v8, "value":I
    if-nez v8, :cond_1

    if-eqz v3, :cond_1

    .line 248
    invoke-static {p1, v6}, Landroid/util/DebugUtils;->constNameWithoutPrefix(Ljava/lang/String;Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 250
    :cond_1
    and-int v9, p2, v8

    if-eqz v9, :cond_2

    .line 251
    not-int v9, v8

    and-int/2addr p2, v9

    .line 252
    invoke-static {p1, v6}, Landroid/util/DebugUtils;->constNameWithoutPrefix(Ljava/lang/String;Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x7c

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    .end local v8    # "value":I
    :cond_2
    goto :goto_2

    .line 254
    :catch_0
    move-exception v8

    .line 241
    .end local v6    # "field":Ljava/lang/reflect/Field;
    .end local v7    # "modifiers":I
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 258
    :cond_4
    if-nez p2, :cond_6

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_5

    goto :goto_3

    .line 261
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 259
    :cond_6
    :goto_3
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static isObjectSelected(Ljava/lang/Object;)Z
    .locals 13
    .param p0, "object"    # Ljava/lang/Object;

    .line 70
    const/4 v0, 0x0

    .line 71
    .local v0, "match":Z
    const-string v1, "ANDROID_OBJECT_FILTER"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 73
    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, "selectors":[Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v5, v2, v4

    invoke-virtual {v3, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 77
    const/4 v3, 0x1

    move v5, v0

    move v0, v3

    .line 77
    .local v0, "i":I
    .local v5, "match":Z
    :goto_0
    array-length v6, v2

    if-ge v0, v6, :cond_4

    .line 78
    aget-object v6, v2, v0

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 79
    .local v6, "pair":[Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 81
    .local v7, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v8, 0x0

    .line 82
    .local v8, "declaredMethod":Ljava/lang/reflect/Method;
    move-object v9, v8

    move-object v8, v7

    .line 84
    .local v8, "parent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v9, "declaredMethod":Ljava/lang/reflect/Method;
    :cond_0
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "get"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v6, v4

    .line 85
    invoke-virtual {v11, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v11, v12}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v6, v4

    .line 86
    invoke-virtual {v11, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    move-object v12, v11

    check-cast v12, [Ljava/lang/Class;

    .line 84
    invoke-virtual {v8, v10, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    move-object v9, v10

    .line 88
    invoke-virtual {v7}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v10

    move-object v8, v10

    if-eqz v10, :cond_1

    if-eqz v9, :cond_0

    .line 91
    :cond_1
    if-eqz v9, :cond_3

    .line 92
    check-cast v11, [Ljava/lang/Object;

    .line 93
    invoke-virtual {v9, p0, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 94
    .local v10, "value":Ljava/lang/Object;
    if-eqz v10, :cond_2

    .line 95
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    :cond_2
    const-string/jumbo v11, "null"

    :goto_1
    aget-object v12, v6, v3

    invoke-virtual {v11, v12}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    or-int/2addr v5, v11

    .line 103
    .end local v6    # "pair":[Ljava/lang/String;
    .end local v7    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "parent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "declaredMethod":Ljava/lang/reflect/Method;
    .end local v10    # "value":Ljava/lang/Object;
    :cond_3
    :goto_2
    goto :goto_3

    .line 101
    .restart local v6    # "pair":[Ljava/lang/String;
    .restart local v7    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v8

    .line 102
    .local v8, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v8}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 102
    .end local v6    # "pair":[Ljava/lang/String;
    .end local v7    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_3

    .line 99
    .restart local v6    # "pair":[Ljava/lang/String;
    .restart local v7    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v8

    .line 100
    .local v8, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v8}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 100
    .end local v8    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_2

    .line 97
    :catch_2
    move-exception v8

    .line 98
    .local v8, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v8}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 98
    .end local v8    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_2

    .line 77
    .end local v6    # "pair":[Ljava/lang/String;
    .end local v7    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    .end local v0    # "i":I
    .end local v2    # "selectors":[Ljava/lang/String;
    :cond_4
    move v0, v5

    .line 107
    .end local v5    # "match":Z
    .local v0, "match":Z
    :cond_5
    return v0
.end method

.method public static printSizeValue(Ljava/io/PrintWriter;J)V
    .locals 6
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "number"    # J

    .line 131
    long-to-float v0, p1

    .line 132
    .local v0, "result":F
    const-string v1, ""

    .line 133
    .local v1, "suffix":Ljava/lang/String;
    const/high16 v2, 0x44610000    # 900.0f

    cmpl-float v3, v0, v2

    const/high16 v4, 0x44800000    # 1024.0f

    if-lez v3, :cond_0

    .line 134
    const-string v1, "KB"

    .line 135
    div-float/2addr v0, v4

    .line 137
    :cond_0
    cmpl-float v3, v0, v2

    if-lez v3, :cond_1

    .line 138
    const-string v1, "MB"

    .line 139
    div-float/2addr v0, v4

    .line 141
    :cond_1
    cmpl-float v3, v0, v2

    if-lez v3, :cond_2

    .line 142
    const-string v1, "GB"

    .line 143
    div-float/2addr v0, v4

    .line 145
    :cond_2
    cmpl-float v3, v0, v2

    if-lez v3, :cond_3

    .line 146
    const-string v1, "TB"

    .line 147
    div-float/2addr v0, v4

    .line 149
    :cond_3
    cmpl-float v2, v0, v2

    if-lez v2, :cond_4

    .line 150
    const-string v1, "PB"

    .line 151
    div-float/2addr v0, v4

    .line 154
    :cond_4
    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gez v2, :cond_5

    .line 155
    const-string v2, "%.2f"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "value":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 156
    .end local v2    # "value":Ljava/lang/String;
    :cond_5
    const/high16 v2, 0x41200000    # 10.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_6

    .line 157
    const-string v2, "%.1f"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 158
    :cond_6
    const/high16 v2, 0x42c80000    # 100.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_7

    .line 159
    const-string v2, "%.0f"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 161
    :cond_7
    const-string v2, "%.0f"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 163
    .restart local v2    # "value":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public static sizeValueToString(JLjava/lang/StringBuilder;)Ljava/lang/String;
    .locals 6
    .param p0, "number"    # J
    .param p2, "outBuilder"    # Ljava/lang/StringBuilder;

    .line 169
    if-nez p2, :cond_0

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object p2, v0

    .line 172
    :cond_0
    long-to-float v0, p0

    .line 173
    .local v0, "result":F
    const-string v1, ""

    .line 174
    .local v1, "suffix":Ljava/lang/String;
    const/high16 v2, 0x44610000    # 900.0f

    cmpl-float v3, v0, v2

    const/high16 v4, 0x44800000    # 1024.0f

    if-lez v3, :cond_1

    .line 175
    const-string v1, "KB"

    .line 176
    div-float/2addr v0, v4

    .line 178
    :cond_1
    cmpl-float v3, v0, v2

    if-lez v3, :cond_2

    .line 179
    const-string v1, "MB"

    .line 180
    div-float/2addr v0, v4

    .line 182
    :cond_2
    cmpl-float v3, v0, v2

    if-lez v3, :cond_3

    .line 183
    const-string v1, "GB"

    .line 184
    div-float/2addr v0, v4

    .line 186
    :cond_3
    cmpl-float v3, v0, v2

    if-lez v3, :cond_4

    .line 187
    const-string v1, "TB"

    .line 188
    div-float/2addr v0, v4

    .line 190
    :cond_4
    cmpl-float v2, v0, v2

    if-lez v2, :cond_5

    .line 191
    const-string v1, "PB"

    .line 192
    div-float/2addr v0, v4

    .line 195
    :cond_5
    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gez v2, :cond_6

    .line 196
    const-string v2, "%.2f"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "value":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 197
    .end local v2    # "value":Ljava/lang/String;
    :cond_6
    const/high16 v2, 0x41200000    # 10.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_7

    .line 198
    const-string v2, "%.1f"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 199
    :cond_7
    const/high16 v2, 0x42c80000    # 100.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_8

    .line 200
    const-string v2, "%.0f"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 202
    :cond_8
    const-string v2, "%.0f"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 204
    .restart local v2    # "value":Ljava/lang/String;
    :goto_1
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static valueToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 216
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 217
    .local v3, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    .line 218
    .local v4, "modifiers":I
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 219
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 221
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    if-ne p2, v5, :cond_0

    .line 222
    invoke-static {p1, v3}, Landroid/util/DebugUtils;->constNameWithoutPrefix(Ljava/lang/String;Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 225
    :cond_0
    goto :goto_1

    .line 224
    :catch_0
    move-exception v5

    .line 216
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "modifiers":I
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 228
    :cond_2
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
