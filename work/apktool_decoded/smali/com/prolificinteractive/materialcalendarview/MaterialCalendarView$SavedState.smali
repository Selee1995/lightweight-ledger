.class public Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "MaterialCalendarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field allowClickDaysOutsideCurrentMonth:Z

.field cacheCurrentPosition:Z

.field calendarMode:Lcom/prolificinteractive/materialcalendarview/CalendarMode;

.field color:I

.field currentMonth:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

.field dateTextAppearance:I

.field dynamicHeightEnabled:Z

.field firstDayOfWeek:I

.field maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

.field minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

.field orientation:I

.field selectedDates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/prolificinteractive/materialcalendarview/CalendarDay;",
            ">;"
        }
    .end annotation
.end field

.field selectionMode:I

.field showOtherDates:I

.field tileHeightPx:I

.field tileWidthPx:I

.field topbarVisible:Z

.field weekDayTextAppearance:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1189
    new-instance v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState$1;

    invoke-direct {v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState$1;-><init>()V

    sput-object v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .line 1201
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x0

    .line 1143
    iput v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->color:I

    .line 1144
    iput v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->dateTextAppearance:I

    .line 1145
    iput v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->weekDayTextAppearance:I

    const/4 v1, 0x4

    .line 1146
    iput v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->showOtherDates:I

    const/4 v1, 0x1

    .line 1147
    iput-boolean v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->allowClickDaysOutsideCurrentMonth:Z

    const/4 v2, 0x0

    .line 1148
    iput-object v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 1149
    iput-object v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 1150
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->selectedDates:Ljava/util/List;

    .line 1151
    iput v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->firstDayOfWeek:I

    .line 1152
    iput v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->orientation:I

    const/4 v3, -0x1

    .line 1153
    iput v3, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->tileWidthPx:I

    .line 1154
    iput v3, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->tileHeightPx:I

    .line 1155
    iput-boolean v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->topbarVisible:Z

    .line 1156
    iput v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->selectionMode:I

    .line 1157
    iput-boolean v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->dynamicHeightEnabled:Z

    .line 1158
    sget-object v3, Lcom/prolificinteractive/materialcalendarview/CalendarMode;->MONTHS:Lcom/prolificinteractive/materialcalendarview/CalendarMode;

    iput-object v3, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->calendarMode:Lcom/prolificinteractive/materialcalendarview/CalendarMode;

    .line 1159
    iput-object v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->currentMonth:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 1202
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->color:I

    .line 1203
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->dateTextAppearance:I

    .line 1204
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->weekDayTextAppearance:I

    .line 1205
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->showOtherDates:I

    .line 1206
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->allowClickDaysOutsideCurrentMonth:Z

    .line 1207
    const-class v2, Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 1208
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    iput-object v3, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 1209
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    iput-object v3, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 1210
    iget-object v3, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->selectedDates:Ljava/util/List;

    sget-object v4, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 1211
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->firstDayOfWeek:I

    .line 1212
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->orientation:I

    .line 1213
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->tileWidthPx:I

    .line 1214
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->tileHeightPx:I

    .line 1215
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v1, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    iput-boolean v3, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->topbarVisible:Z

    .line 1216
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->selectionMode:I

    .line 1217
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v1, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    iput-boolean v3, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->dynamicHeightEnabled:Z

    .line 1218
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v1, :cond_3

    sget-object v3, Lcom/prolificinteractive/materialcalendarview/CalendarMode;->WEEKS:Lcom/prolificinteractive/materialcalendarview/CalendarMode;

    goto :goto_3

    :cond_3
    sget-object v3, Lcom/prolificinteractive/materialcalendarview/CalendarMode;->MONTHS:Lcom/prolificinteractive/materialcalendarview/CalendarMode;

    :goto_3
    iput-object v3, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->calendarMode:Lcom/prolificinteractive/materialcalendarview/CalendarMode;

    .line 1219
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    iput-object v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->currentMonth:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 1220
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    :cond_4
    iput-boolean v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->cacheCurrentPosition:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$1;)V
    .locals 0

    .line 1141
    invoke-direct {p0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 3

    .line 1163
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    const/4 p1, 0x0

    .line 1143
    iput p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->color:I

    .line 1144
    iput p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->dateTextAppearance:I

    .line 1145
    iput p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->weekDayTextAppearance:I

    const/4 v0, 0x4

    .line 1146
    iput v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->showOtherDates:I

    const/4 v0, 0x1

    .line 1147
    iput-boolean v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->allowClickDaysOutsideCurrentMonth:Z

    const/4 v1, 0x0

    .line 1148
    iput-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 1149
    iput-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 1150
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->selectedDates:Ljava/util/List;

    .line 1151
    iput v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->firstDayOfWeek:I

    .line 1152
    iput p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->orientation:I

    const/4 v2, -0x1

    .line 1153
    iput v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->tileWidthPx:I

    .line 1154
    iput v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->tileHeightPx:I

    .line 1155
    iput-boolean v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->topbarVisible:Z

    .line 1156
    iput v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->selectionMode:I

    .line 1157
    iput-boolean p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->dynamicHeightEnabled:Z

    .line 1158
    sget-object p1, Lcom/prolificinteractive/materialcalendarview/CalendarMode;->MONTHS:Lcom/prolificinteractive/materialcalendarview/CalendarMode;

    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->calendarMode:Lcom/prolificinteractive/materialcalendarview/CalendarMode;

    .line 1159
    iput-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->currentMonth:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1168
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1169
    iget p2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->color:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1170
    iget p2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->dateTextAppearance:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1171
    iget p2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->weekDayTextAppearance:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1172
    iget p2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->showOtherDates:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1173
    iget-boolean p2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->allowClickDaysOutsideCurrentMonth:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1174
    iget-object p2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1175
    iget-object p2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1176
    iget-object p2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->selectedDates:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1177
    iget p2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->firstDayOfWeek:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1178
    iget p2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->orientation:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1179
    iget p2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->tileWidthPx:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1180
    iget p2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->tileHeightPx:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1181
    iget-boolean p2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->topbarVisible:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1182
    iget p2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->selectionMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1183
    iget-boolean p2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->dynamicHeightEnabled:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1184
    iget-object p2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->calendarMode:Lcom/prolificinteractive/materialcalendarview/CalendarMode;

    sget-object v1, Lcom/prolificinteractive/materialcalendarview/CalendarMode;->WEEKS:Lcom/prolificinteractive/materialcalendarview/CalendarMode;

    if-ne p2, v1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1185
    iget-object p2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->currentMonth:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1186
    iget-boolean p2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->cacheCurrentPosition:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
