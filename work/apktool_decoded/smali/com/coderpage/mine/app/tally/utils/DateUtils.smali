.class public Lcom/coderpage/mine/app/tally/utils/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# static fields
.field public static final DAY_MILLISECONDS:I = 0x5265c00


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static currentDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    .line 25
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static currentMonthStartUnixTime()J
    .locals 3

    .line 115
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    .line 116
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xb

    const/4 v2, 0x0

    .line 117
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    .line 118
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    .line 119
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 120
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static dayDateRange(III)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "year",
            "month",
            "day"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 65
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 66
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    sub-int/2addr p1, v1

    const/4 p0, 0x2

    .line 68
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    const/4 p0, 0x5

    .line 69
    invoke-virtual {v0, p0, p2}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xb

    const/4 p1, 0x0

    .line 70
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p2, 0xc

    .line 71
    invoke-virtual {v0, p2, p1}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    .line 72
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xe

    .line 73
    invoke-virtual {v0, v2, p1}, Ljava/util/Calendar;->set(II)V

    .line 74
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    const/16 p1, 0x17

    .line 76
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0x3b

    .line 77
    invoke-virtual {v0, p2, p0}, Ljava/util/Calendar;->set(II)V

    .line 78
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0x3e7

    .line 79
    invoke-virtual {v0, v2, p0}, Ljava/util/Calendar;->set(II)V

    .line 80
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    .line 82
    new-instance p2, Landroid/util/Pair;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-direct {p2, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method

.method public static formatDisplayDateRange(Landroid/content/Context;JJ)Ljava/lang/String;
    .locals 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "startTimeMills",
            "endTimeMillis"
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    .line 152
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 153
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 154
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 155
    invoke-virtual {v6, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 156
    invoke-virtual {v7, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v8, 0x1

    .line 158
    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/4 v10, 0x2

    .line 159
    invoke-virtual {v5, v10}, Ljava/util/Calendar;->get(I)I

    move-result v11

    const/4 v12, 0x5

    .line 160
    invoke-virtual {v5, v12}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 161
    invoke-virtual {v6, v8}, Ljava/util/Calendar;->get(I)I

    move-result v13

    .line 162
    invoke-virtual {v6, v10}, Ljava/util/Calendar;->get(I)I

    move-result v14

    .line 163
    invoke-virtual {v6, v12}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 164
    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v15

    .line 165
    invoke-virtual {v7, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 166
    invoke-virtual {v7, v12}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v12, 0x0

    if-ne v13, v15, :cond_0

    if-ne v14, v10, :cond_0

    if-ne v6, v7, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-eqz v7, :cond_1

    if-ne v13, v9, :cond_1

    if-ne v14, v11, :cond_1

    if-ne v6, v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_2

    const v1, 0x7f0e002d

    .line 173
    invoke-static {v0, v1}, Lcom/coderpage/base/utils/ResUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const v5, 0x7f0e0031

    if-eqz v7, :cond_3

    .line 176
    new-instance v3, Ljava/text/SimpleDateFormat;

    .line 177
    invoke-static {v0, v5}, Lcom/coderpage/base/utils/ResUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 178
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    if-ne v13, v15, :cond_4

    if-ne v14, v10, :cond_4

    const/4 v6, 0x1

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :goto_2
    const-wide/32 v10, 0x5265c00

    if-eqz v6, :cond_5

    add-int/2addr v14, v8

    .line 186
    invoke-static {v13, v14}, Lcom/coderpage/mine/app/tally/utils/DateUtils;->monthDateRange(II)Landroid/util/Pair;

    move-result-object v7

    .line 187
    iget-object v14, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    sub-long v16, v16, v18

    sub-long v18, v3, v1

    sub-long v16, v16, v18

    cmp-long v7, v16, v10

    if-gez v7, :cond_5

    const/4 v7, 0x1

    goto :goto_3

    :cond_5
    const/4 v7, 0x0

    :goto_3
    if-eqz v7, :cond_6

    .line 190
    new-instance v3, Ljava/text/SimpleDateFormat;

    const v4, 0x7f0e0030

    .line 191
    invoke-static {v0, v4}, Lcom/coderpage/base/utils/ResUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 192
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    const-string v7, "~"

    const v14, 0x7f0e002c

    if-eqz v6, :cond_8

    if-ne v13, v9, :cond_7

    const v5, 0x7f0e002c

    .line 196
    :cond_7
    new-instance v6, Ljava/text/SimpleDateFormat;

    .line 197
    invoke-static {v0, v5}, Lcom/coderpage/base/utils/ResUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v6, v0, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_8
    if-ne v13, v15, :cond_9

    const/4 v6, 0x1

    goto :goto_4

    :cond_9
    const/4 v6, 0x0

    :goto_4
    if-eqz v6, :cond_b

    .line 205
    invoke-static {v13}, Lcom/coderpage/mine/app/tally/utils/DateUtils;->yearDateRange(I)Landroid/util/Pair;

    move-result-object v9

    .line 206
    iget-object v13, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    iget-object v9, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    sub-long v15, v15, v17

    sub-long v17, v3, v1

    sub-long v15, v15, v17

    cmp-long v9, v15, v10

    if-gez v9, :cond_a

    goto :goto_5

    :cond_a
    const/4 v8, 0x0

    :goto_5
    move v12, v8

    :cond_b
    if-eqz v12, :cond_c

    .line 209
    new-instance v3, Ljava/text/SimpleDateFormat;

    const v4, 0x7f0e002f

    .line 210
    invoke-static {v0, v4}, Lcom/coderpage/base/utils/ResUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 211
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_c
    if-eqz v6, :cond_d

    const v5, 0x7f0e002c

    .line 215
    :cond_d
    new-instance v6, Ljava/text/SimpleDateFormat;

    .line 216
    invoke-static {v0, v5}, Lcom/coderpage/base/utils/ResUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v6, v0, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static monthDateRange(II)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "year",
            "month"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 36
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 37
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    add-int/lit8 v2, p1, -0x1

    const/4 v3, 0x2

    .line 39
    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x5

    .line 40
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xb

    const/4 v3, 0x0

    .line 41
    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xc

    .line 42
    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xd

    .line 43
    invoke-virtual {v0, v5, v3}, Ljava/util/Calendar;->set(II)V

    .line 44
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 46
    invoke-static {p0, p1}, Lcom/coderpage/mine/app/tally/utils/TimeUtils;->getDaysTotalOfMonth(II)I

    move-result p0

    invoke-virtual {v0, v2, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0x17

    .line 47
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0x3b

    .line 48
    invoke-virtual {v0, v4, p0}, Ljava/util/Calendar;->set(II)V

    .line 49
    invoke-virtual {v0, v5, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xe

    const/16 p1, 0x3e7

    .line 50
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    .line 51
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    .line 53
    new-instance v0, Landroid/util/Pair;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static todayEndUnixTime()J
    .locals 3

    .line 135
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    const/16 v2, 0x17

    .line 136
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    const/16 v2, 0x3b

    .line 137
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    .line 138
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    const/16 v2, 0x3e7

    .line 139
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 140
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static todayStartUnixTime()J
    .locals 3

    .line 125
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    const/4 v2, 0x0

    .line 126
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    .line 127
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    .line 128
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    .line 129
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 130
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static yearDateRange(I)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "year"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 92
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 93
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    const/4 p0, 0x2

    const/4 v2, 0x0

    .line 94
    invoke-virtual {v0, p0, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v3, 0x5

    .line 95
    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xb

    .line 96
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xc

    .line 97
    invoke-virtual {v0, v4, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xd

    .line 98
    invoke-virtual {v0, v5, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xe

    .line 99
    invoke-virtual {v0, v6, v2}, Ljava/util/Calendar;->set(II)V

    .line 100
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    .line 102
    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0x1f

    .line 103
    invoke-virtual {v0, v3, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0x17

    .line 104
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0x3b

    .line 105
    invoke-virtual {v0, v4, p0}, Ljava/util/Calendar;->set(II)V

    .line 106
    invoke-virtual {v0, v5, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0x3e7

    .line 107
    invoke-virtual {v0, v6, p0}, Ljava/util/Calendar;->set(II)V

    .line 108
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 110
    new-instance p0, Landroid/util/Pair;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method
