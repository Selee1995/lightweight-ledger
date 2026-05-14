.class public final Lcom/prolificinteractive/materialcalendarview/CalendarDay;
.super Ljava/lang/Object;
.source "CalendarDay.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/prolificinteractive/materialcalendarview/CalendarDay;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private transient _calendar:Ljava/util/Calendar;

.field private transient _date:Ljava/util/Date;

.field private final day:I

.field private final month:I

.field private final year:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 293
    new-instance v0, Lcom/prolificinteractive/materialcalendarview/CalendarDay$1;

    invoke-direct {v0}, Lcom/prolificinteractive/materialcalendarview/CalendarDay$1;-><init>()V

    sput-object v0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 90
    invoke-static {}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;-><init>(Ljava/util/Calendar;)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput p1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->year:I

    .line 115
    iput p2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->month:I

    .line 116
    iput p3, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->day:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;-><init>(III)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 100
    invoke-static {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getYear(Ljava/util/Calendar;)I

    move-result v0

    .line 101
    invoke-static {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getMonth(Ljava/util/Calendar;)I

    move-result v1

    .line 102
    invoke-static {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getDay(Ljava/util/Calendar;)I

    move-result p1

    .line 99
    invoke-direct {p0, v0, v1, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;-><init>(III)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 125
    invoke-static {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getInstance(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;-><init>(Ljava/util/Calendar;)V

    return-void
.end method

.method public static from(III)Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .locals 1

    .line 36
    new-instance v0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-direct {v0, p0, p1, p2}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;-><init>(III)V

    return-object v0
.end method

.method public static from(Ljava/util/Calendar;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 50
    :cond_0
    invoke-static {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getYear(Ljava/util/Calendar;)I

    move-result v0

    .line 51
    invoke-static {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getMonth(Ljava/util/Calendar;)I

    move-result v1

    .line 52
    invoke-static {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getDay(Ljava/util/Calendar;)I

    move-result p0

    .line 49
    invoke-static {v0, v1, p0}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->from(III)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object p0

    return-object p0
.end method

.method public static from(Ljava/util/Date;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 66
    :cond_0
    invoke-static {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getInstance(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object p0

    invoke-static {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->from(Ljava/util/Calendar;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object p0

    return-object p0
.end method

.method private static hashCode(III)I
    .locals 0

    mul-int/lit16 p0, p0, 0x2710

    mul-int/lit8 p1, p1, 0x64

    add-int/2addr p0, p1

    add-int/2addr p0, p2

    return p0
.end method

.method public static today()Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .locals 1

    .line 23
    invoke-static {}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->from(Ljava/util/Calendar;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public copyTo(Ljava/util/Calendar;)V
    .locals 3

    .line 193
    invoke-virtual {p1}, Ljava/util/Calendar;->clear()V

    .line 194
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->year:I

    iget v1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->month:I

    iget v2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->day:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/Calendar;->set(III)V

    return-void
.end method

.method copyToMonthOnly(Ljava/util/Calendar;)V
    .locals 3

    .line 183
    invoke-virtual {p1}, Ljava/util/Calendar;->clear()V

    .line 184
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->year:I

    iget v1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->month:I

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/Calendar;->set(III)V

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 249
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 253
    :cond_1
    check-cast p1, Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 255
    iget v2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->day:I

    iget v3, p1, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->day:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->month:I

    iget v3, p1, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->month:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->year:I

    iget p1, p1, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->year:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getCalendar()Ljava/util/Calendar;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->_calendar:Ljava/util/Calendar;

    if-nez v0, :cond_0

    .line 176
    invoke-static {}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->_calendar:Ljava/util/Calendar;

    .line 177
    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->copyTo(Ljava/util/Calendar;)V

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->_calendar:Ljava/util/Calendar;

    return-object v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->_date:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->_date:Ljava/util/Date;

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->_date:Ljava/util/Date;

    return-object v0
.end method

.method public getDay()I
    .locals 1

    .line 152
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->day:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .line 143
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->month:I

    return v0
.end method

.method public getYear()I
    .locals 1

    .line 134
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->year:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 260
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->year:I

    iget v1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->month:I

    iget v2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->day:I

    invoke-static {v0, v1, v2}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->hashCode(III)I

    move-result v0

    return v0
.end method

.method public isAfter(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z
    .locals 4

    if-eqz p1, :cond_4

    .line 237
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->year:I

    iget v1, p1, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->year:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    .line 238
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->month:I

    iget v1, p1, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->month:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->day:I

    iget p1, p1, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->day:I

    if-le v0, p1, :cond_1

    goto :goto_0

    :cond_0
    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_2
    if-le v0, v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 234
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "other cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isBefore(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z
    .locals 4

    if-eqz p1, :cond_4

    .line 219
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->year:I

    iget v1, p1, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->year:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    .line 220
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->month:I

    iget v1, p1, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->month:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->day:I

    iget p1, p1, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->day:I

    if-ge v0, p1, :cond_1

    goto :goto_0

    :cond_0
    if-ge v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_2
    if-ge v0, v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 217
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "other cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isInRange(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 205
    invoke-virtual {p1, p0}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->isAfter(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    .line 206
    invoke-virtual {p2, p0}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->isBefore(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CalendarDay{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->year:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->month:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->day:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 288
    iget p2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->year:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    iget p2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->month:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 290
    iget p2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->day:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
