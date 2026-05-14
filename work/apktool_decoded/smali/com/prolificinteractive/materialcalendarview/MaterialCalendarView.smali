.class public Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;
.super Landroid/view/ViewGroup;
.source "MaterialCalendarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;,
        Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;,
        Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$LayoutParams;,
        Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;,
        Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$ShowOtherDates;,
        Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SelectionMode;
    }
.end annotation


# static fields
.field private static final DAY_NAMES_ROW:I = 0x1

.field private static final DEFAULT_DAYS_IN_WEEK:I = 0x7

.field private static final DEFAULT_MAX_WEEKS:I = 0x6

.field public static final DEFAULT_TILE_SIZE_DP:I = 0x2c

.field private static final DEFAULT_TITLE_FORMATTER:Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;

.field public static final HORIZONTAL:I = 0x1

.field public static final INVALID_TILE_DIMENSION:I = -0xa

.field public static final SELECTION_MODE_MULTIPLE:I = 0x2

.field public static final SELECTION_MODE_NONE:I = 0x0

.field public static final SELECTION_MODE_RANGE:I = 0x3

.field public static final SELECTION_MODE_SINGLE:I = 0x1

.field public static final SHOW_ALL:I = 0x7

.field public static final SHOW_DECORATED_DISABLED:I = 0x4

.field public static final SHOW_DEFAULTS:I = 0x4

.field public static final SHOW_NONE:I = 0x0

.field public static final SHOW_OTHER_MONTHS:I = 0x1

.field public static final SHOW_OUT_OF_RANGE:I = 0x2

.field public static final VERTICAL:I


# instance fields
.field private accentColor:I

.field private adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter<",
            "*>;"
        }
    .end annotation
.end field

.field private allowClickDaysOutsideCurrentMonth:Z

.field private arrowColor:I

.field private final buttonFuture:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

.field private final buttonPast:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

.field calendarContentDescription:Ljava/lang/CharSequence;

.field private calendarMode:Lcom/prolificinteractive/materialcalendarview/CalendarMode;

.field private currentMonth:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

.field private final dayViewDecorators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/prolificinteractive/materialcalendarview/DayViewDecorator;",
            ">;"
        }
    .end annotation
.end field

.field private firstDayOfWeek:I

.field private leftArrowMask:Landroid/graphics/drawable/Drawable;

.field private listener:Lcom/prolificinteractive/materialcalendarview/OnDateSelectedListener;

.field private mDynamicHeightEnabled:Z

.field private maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

.field private minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

.field private monthListener:Lcom/prolificinteractive/materialcalendarview/OnMonthChangedListener;

.field private final onClickListener:Landroid/view/View$OnClickListener;

.field private final pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private final pager:Lcom/prolificinteractive/materialcalendarview/CalendarPager;

.field private rangeListener:Lcom/prolificinteractive/materialcalendarview/OnRangeSelectedListener;

.field private rightArrowMask:Landroid/graphics/drawable/Drawable;

.field private selectionMode:I
    .annotation runtime Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SelectionMode;
    .end annotation
.end field

.field private state:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;

.field private tileHeight:I

.field private tileWidth:I

.field private final title:Landroid/widget/TextView;

.field private final titleChanger:Lcom/prolificinteractive/materialcalendarview/TitleChanger;

.field private topbar:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 171
    new-instance v0, Lcom/prolificinteractive/materialcalendarview/format/DateFormatTitleFormatter;

    invoke-direct {v0}, Lcom/prolificinteractive/materialcalendarview/format/DateFormatTitleFormatter;-><init>()V

    sput-object v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->DEFAULT_TITLE_FORMATTER:Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 241
    invoke-direct {p0, p1, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11

    .line 245
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->dayViewDecorators:Ljava/util/ArrayList;

    .line 189
    new-instance v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$1;

    invoke-direct {v0, p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$1;-><init>(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)V

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->onClickListener:Landroid/view/View$OnClickListener;

    .line 200
    new-instance v1, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$2;

    invoke-direct {v1, p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$2;-><init>(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)V

    iput-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    const/4 v2, 0x0

    .line 219
    iput-object v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 220
    iput-object v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    const/4 v2, 0x0

    .line 227
    iput v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->accentColor:I

    const/high16 v3, -0x1000000

    .line 228
    iput v3, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->arrowColor:I

    const/16 v4, -0xa

    .line 231
    iput v4, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->tileHeight:I

    .line 232
    iput v4, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->tileWidth:I

    const/4 v5, 0x1

    .line 233
    iput v5, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->selectionMode:I

    .line 235
    iput-boolean v5, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->allowClickDaysOutsideCurrentMonth:Z

    .line 247
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x13

    if-lt v6, v7, :cond_0

    .line 249
    invoke-virtual {p0, v2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setClipToPadding(Z)V

    .line 250
    invoke-virtual {p0, v2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setClipChildren(Z)V

    goto :goto_0

    .line 253
    :cond_0
    invoke-virtual {p0, v5}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setClipChildren(Z)V

    .line 254
    invoke-virtual {p0, v5}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setClipToPadding(Z)V

    .line 257
    :goto_0
    new-instance v6, Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/prolificinteractive/materialcalendarview/DirectionButton;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->buttonPast:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    .line 258
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lcom/prolificinteractive/materialcalendarview/R$string;->previous:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/prolificinteractive/materialcalendarview/DirectionButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 259
    new-instance v7, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->title:Landroid/widget/TextView;

    .line 260
    new-instance v8, Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/prolificinteractive/materialcalendarview/DirectionButton;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->buttonFuture:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    .line 261
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getContext()Landroid/content/Context;

    move-result-object v9

    sget v10, Lcom/prolificinteractive/materialcalendarview/R$string;->next:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/prolificinteractive/materialcalendarview/DirectionButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 262
    new-instance v9, Lcom/prolificinteractive/materialcalendarview/CalendarPager;

    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/prolificinteractive/materialcalendarview/CalendarPager;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pager:Lcom/prolificinteractive/materialcalendarview/CalendarPager;

    .line 264
    invoke-virtual {v6, v0}, Lcom/prolificinteractive/materialcalendarview/DirectionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    invoke-virtual {v8, v0}, Lcom/prolificinteractive/materialcalendarview/DirectionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    new-instance v0, Lcom/prolificinteractive/materialcalendarview/TitleChanger;

    invoke-direct {v0, v7}, Lcom/prolificinteractive/materialcalendarview/TitleChanger;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->titleChanger:Lcom/prolificinteractive/materialcalendarview/TitleChanger;

    .line 268
    sget-object v6, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->DEFAULT_TITLE_FORMATTER:Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;

    invoke-virtual {v0, v6}, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->setTitleFormatter(Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;)V

    .line 270
    invoke-virtual {v9, v1}, Lcom/prolificinteractive/materialcalendarview/CalendarPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 271
    new-instance v1, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$3;

    invoke-direct {v1, p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$3;-><init>(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)V

    invoke-virtual {v9, v2, v1}, Lcom/prolificinteractive/materialcalendarview/CalendarPager;->setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V

    .line 279
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v6, Lcom/prolificinteractive/materialcalendarview/R$styleable;->MaterialCalendarView:[I

    .line 280
    invoke-virtual {v1, p2, v6, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 282
    :try_start_0
    sget v1, Lcom/prolificinteractive/materialcalendarview/R$styleable;->MaterialCalendarView_mcv_calendarMode:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    .line 286
    sget v6, Lcom/prolificinteractive/materialcalendarview/R$styleable;->MaterialCalendarView_mcv_firstDayOfWeek:I

    const/4 v7, -0x1

    invoke-virtual {p2, v6, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    iput v6, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->firstDayOfWeek:I

    .line 291
    sget v6, Lcom/prolificinteractive/materialcalendarview/R$styleable;->MaterialCalendarView_mcv_titleAnimationOrientation:I

    .line 292
    invoke-virtual {p2, v6, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    .line 291
    invoke-virtual {v0, v2}, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->setOrientation(I)V

    .line 295
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->firstDayOfWeek:I

    if-gez v0, :cond_1

    .line 297
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    iput v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->firstDayOfWeek:I

    .line 300
    :cond_1
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->newState()Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;

    move-result-object v0

    iget v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->firstDayOfWeek:I

    .line 301
    invoke-virtual {v0, v2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->setFirstDayOfWeek(I)Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;

    move-result-object v0

    .line 302
    invoke-static {}, Lcom/prolificinteractive/materialcalendarview/CalendarMode;->values()[Lcom/prolificinteractive/materialcalendarview/CalendarMode;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->setCalendarDisplayMode(Lcom/prolificinteractive/materialcalendarview/CalendarMode;)Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;

    move-result-object v0

    .line 303
    invoke-virtual {v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->commit()V

    .line 305
    sget v0, Lcom/prolificinteractive/materialcalendarview/R$styleable;->MaterialCalendarView_mcv_tileSize:I

    invoke-virtual {p2, v0, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    if-le v0, v4, :cond_2

    .line 307
    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setTileSize(I)V

    .line 310
    :cond_2
    sget v0, Lcom/prolificinteractive/materialcalendarview/R$styleable;->MaterialCalendarView_mcv_tileWidth:I

    invoke-virtual {p2, v0, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    if-le v0, v4, :cond_3

    .line 312
    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setTileWidth(I)V

    .line 315
    :cond_3
    sget v0, Lcom/prolificinteractive/materialcalendarview/R$styleable;->MaterialCalendarView_mcv_tileHeight:I

    invoke-virtual {p2, v0, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    if-le v0, v4, :cond_4

    .line 317
    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setTileHeight(I)V

    .line 320
    :cond_4
    sget v0, Lcom/prolificinteractive/materialcalendarview/R$styleable;->MaterialCalendarView_mcv_arrowColor:I

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setArrowColor(I)V

    .line 324
    sget v0, Lcom/prolificinteractive/materialcalendarview/R$styleable;->MaterialCalendarView_mcv_leftArrowMask:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_5

    .line 328
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/prolificinteractive/materialcalendarview/R$drawable;->mcv_action_previous:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 330
    :cond_5
    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setLeftArrowMask(Landroid/graphics/drawable/Drawable;)V

    .line 331
    sget v0, Lcom/prolificinteractive/materialcalendarview/R$styleable;->MaterialCalendarView_mcv_rightArrowMask:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_6

    .line 335
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/prolificinteractive/materialcalendarview/R$drawable;->mcv_action_next:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 337
    :cond_6
    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setRightArrowMask(Landroid/graphics/drawable/Drawable;)V

    .line 339
    sget v0, Lcom/prolificinteractive/materialcalendarview/R$styleable;->MaterialCalendarView_mcv_selectionColor:I

    .line 342
    invoke-static {p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getThemeAccentColor(Landroid/content/Context;)I

    move-result p1

    .line 340
    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    .line 339
    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setSelectionColor(I)V

    .line 346
    sget p1, Lcom/prolificinteractive/materialcalendarview/R$styleable;->MaterialCalendarView_mcv_weekDayLabels:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 348
    new-instance v0, Lcom/prolificinteractive/materialcalendarview/format/ArrayWeekDayFormatter;

    invoke-direct {v0, p1}, Lcom/prolificinteractive/materialcalendarview/format/ArrayWeekDayFormatter;-><init>([Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setWeekDayFormatter(Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;)V

    .line 351
    :cond_7
    sget p1, Lcom/prolificinteractive/materialcalendarview/R$styleable;->MaterialCalendarView_mcv_monthLabels:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 353
    new-instance v0, Lcom/prolificinteractive/materialcalendarview/format/MonthArrayTitleFormatter;

    invoke-direct {v0, p1}, Lcom/prolificinteractive/materialcalendarview/format/MonthArrayTitleFormatter;-><init>([Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setTitleFormatter(Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;)V

    .line 356
    :cond_8
    sget p1, Lcom/prolificinteractive/materialcalendarview/R$styleable;->MaterialCalendarView_mcv_headerTextAppearance:I

    sget v0, Lcom/prolificinteractive/materialcalendarview/R$style;->TextAppearance_MaterialCalendarWidget_Header:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setHeaderTextAppearance(I)V

    .line 360
    sget p1, Lcom/prolificinteractive/materialcalendarview/R$styleable;->MaterialCalendarView_mcv_weekDayTextAppearance:I

    sget v0, Lcom/prolificinteractive/materialcalendarview/R$style;->TextAppearance_MaterialCalendarWidget_WeekDay:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setWeekDayTextAppearance(I)V

    .line 364
    sget p1, Lcom/prolificinteractive/materialcalendarview/R$styleable;->MaterialCalendarView_mcv_dateTextAppearance:I

    sget v0, Lcom/prolificinteractive/materialcalendarview/R$style;->TextAppearance_MaterialCalendarWidget_Date:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setDateTextAppearance(I)V

    .line 369
    sget p1, Lcom/prolificinteractive/materialcalendarview/R$styleable;->MaterialCalendarView_mcv_showOtherDates:I

    const/4 v0, 0x4

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setShowOtherDates(I)V

    .line 374
    sget p1, Lcom/prolificinteractive/materialcalendarview/R$styleable;->MaterialCalendarView_mcv_allowClickDaysOutsideCurrentMonth:I

    invoke-virtual {p2, p1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setAllowClickDaysOutsideCurrentMonth(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 379
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 381
    :goto_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 385
    iget-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    sget-object p2, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->DEFAULT_TITLE_FORMATTER:Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;

    invoke-virtual {p1, p2}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->setTitleFormatter(Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;)V

    .line 386
    invoke-direct {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setupChildren()V

    .line 388
    invoke-static {}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->today()Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object p1

    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->currentMonth:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 389
    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setCurrentDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 391
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 392
    iget-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pager:Lcom/prolificinteractive/materialcalendarview/CalendarPager;

    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->removeView(Landroid/view/View;)V

    .line 393
    new-instance p1, Lcom/prolificinteractive/materialcalendarview/MonthView;

    iget-object p2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->currentMonth:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getFirstDayOfWeek()I

    move-result v0

    invoke-direct {p1, p0, p2, v0}, Lcom/prolificinteractive/materialcalendarview/MonthView;-><init>(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;Lcom/prolificinteractive/materialcalendarview/CalendarDay;I)V

    .line 394
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getSelectionColor()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/prolificinteractive/materialcalendarview/MonthView;->setSelectionColor(I)V

    .line 395
    iget-object p2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {p2}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->getDateTextAppearance()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/prolificinteractive/materialcalendarview/MonthView;->setDateTextAppearance(I)V

    .line 396
    iget-object p2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {p2}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->getWeekDayTextAppearance()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/prolificinteractive/materialcalendarview/MonthView;->setWeekDayTextAppearance(I)V

    .line 397
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getShowOtherDates()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/prolificinteractive/materialcalendarview/MonthView;->setShowOtherDates(I)V

    .line 398
    new-instance p2, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$LayoutParams;

    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->calendarMode:Lcom/prolificinteractive/materialcalendarview/CalendarMode;

    iget v0, v0, Lcom/prolificinteractive/materialcalendarview/CalendarMode;->visibleWeeksCount:I

    add-int/2addr v0, v5

    invoke-direct {p2, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$LayoutParams;-><init>(I)V

    invoke-virtual {p0, p1, p2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    return-void

    .line 381
    :goto_2
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method static synthetic access$000(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)Lcom/prolificinteractive/materialcalendarview/DirectionButton;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->buttonFuture:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    return-object p0
.end method

.method static synthetic access$100(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)Lcom/prolificinteractive/materialcalendarview/CalendarPager;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pager:Lcom/prolificinteractive/materialcalendarview/CalendarPager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)Lcom/prolificinteractive/materialcalendarview/DirectionButton;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->buttonPast:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->commit(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;)V

    return-void
.end method

.method static synthetic access$300(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->currentMonth:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    return-object p0
.end method

.method static synthetic access$302(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->currentMonth:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    return-object p1
.end method

.method static synthetic access$400(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)Lcom/prolificinteractive/materialcalendarview/TitleChanger;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->titleChanger:Lcom/prolificinteractive/materialcalendarview/TitleChanger;

    return-object p0
.end method

.method static synthetic access$500(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    return-object p0
.end method

.method static synthetic access$600(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->updateUi()V

    return-void
.end method

.method private static clampSize(II)I
    .locals 2

    .line 1675
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1676
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    return p0

    :cond_0
    return p1

    .line 1682
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private commit(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;)V
    .locals 7

    .line 1944
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;->access$700(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1945
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    iget-object v3, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pager:Lcom/prolificinteractive/materialcalendarview/CalendarPager;

    invoke-virtual {v3}, Lcom/prolificinteractive/materialcalendarview/CalendarPager;->getCurrentItem()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->getItem(I)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v0

    .line 1946
    iget-object v3, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->calendarMode:Lcom/prolificinteractive/materialcalendarview/CalendarMode;

    invoke-static {p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;->access$1500(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;)Lcom/prolificinteractive/materialcalendarview/CalendarMode;

    move-result-object v4

    if-eq v3, v4, :cond_4

    .line 1947
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getSelectedDate()Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v3

    .line 1948
    iget-object v4, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->calendarMode:Lcom/prolificinteractive/materialcalendarview/CalendarMode;

    sget-object v5, Lcom/prolificinteractive/materialcalendarview/CalendarMode;->MONTHS:Lcom/prolificinteractive/materialcalendarview/CalendarMode;

    if-ne v4, v5, :cond_0

    if-eqz v3, :cond_0

    .line 1950
    invoke-virtual {v0}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getCalendar()Ljava/util/Calendar;

    move-result-object v4

    .line 1951
    invoke-virtual {v4, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 1952
    invoke-static {v4}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->from(Ljava/util/Calendar;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v4

    .line 1953
    invoke-virtual {v3, v0}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1954
    invoke-virtual {v3, v0}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->isAfter(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v3, v4}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->isBefore(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    .line 1958
    :cond_0
    iget-object v4, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->calendarMode:Lcom/prolificinteractive/materialcalendarview/CalendarMode;

    sget-object v5, Lcom/prolificinteractive/materialcalendarview/CalendarMode;->WEEKS:Lcom/prolificinteractive/materialcalendarview/CalendarMode;

    if-ne v4, v5, :cond_4

    .line 1960
    invoke-virtual {v0}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getCalendar()Ljava/util/Calendar;

    move-result-object v4

    const/4 v5, 0x7

    const/4 v6, 0x6

    .line 1961
    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 1962
    invoke-static {v4}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->from(Ljava/util/Calendar;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v4

    if-eqz v3, :cond_2

    .line 1964
    invoke-virtual {v3, v0}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3, v4}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1965
    invoke-virtual {v3, v0}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->isAfter(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v3, v4}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->isBefore(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    move-object v0, v3

    goto :goto_1

    :cond_2
    move-object v0, v4

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 1975
    :cond_4
    :goto_1
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->state:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;

    .line 1977
    invoke-static {p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;->access$1500(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;)Lcom/prolificinteractive/materialcalendarview/CalendarMode;

    move-result-object v3

    iput-object v3, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->calendarMode:Lcom/prolificinteractive/materialcalendarview/CalendarMode;

    .line 1978
    invoke-static {p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;->access$1600(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;)I

    move-result v3

    iput v3, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->firstDayOfWeek:I

    .line 1979
    invoke-static {p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;->access$1700(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v3

    iput-object v3, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 1980
    invoke-static {p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;->access$1800(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object p1

    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 1984
    sget-object p1, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$4;->$SwitchMap$com$prolificinteractive$materialcalendarview$CalendarMode:[I

    iget-object v3, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->calendarMode:Lcom/prolificinteractive/materialcalendarview/CalendarMode;

    invoke-virtual {v3}, Lcom/prolificinteractive/materialcalendarview/CalendarMode;->ordinal()I

    move-result v3

    aget p1, p1, v3

    if-eq p1, v2, :cond_6

    if-ne p1, v1, :cond_5

    .line 1989
    new-instance p1, Lcom/prolificinteractive/materialcalendarview/WeekPagerAdapter;

    invoke-direct {p1, p0}, Lcom/prolificinteractive/materialcalendarview/WeekPagerAdapter;-><init>(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)V

    goto :goto_2

    .line 1992
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Provided display mode which is not yet implemented"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1986
    :cond_6
    new-instance p1, Lcom/prolificinteractive/materialcalendarview/MonthPagerAdapter;

    invoke-direct {p1, p0}, Lcom/prolificinteractive/materialcalendarview/MonthPagerAdapter;-><init>(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)V

    .line 1994
    :goto_2
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    if-nez v1, :cond_7

    .line 1995
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    goto :goto_3

    .line 1997
    :cond_7
    invoke-virtual {v1, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->migrateStateAndReturn(Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;)Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    .line 1999
    :goto_3
    iget-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pager:Lcom/prolificinteractive/materialcalendarview/CalendarPager;

    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {p1, v1}, Lcom/prolificinteractive/materialcalendarview/CalendarPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 2000
    iget-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-direct {p0, p1, v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setRangeDates(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 2003
    iget-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pager:Lcom/prolificinteractive/materialcalendarview/CalendarPager;

    new-instance v1, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$LayoutParams;

    iget-object v3, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->calendarMode:Lcom/prolificinteractive/materialcalendarview/CalendarMode;

    iget v3, v3, Lcom/prolificinteractive/materialcalendarview/CalendarMode;->visibleWeeksCount:I

    add-int/2addr v3, v2

    invoke-direct {v1, v3}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$LayoutParams;-><init>(I)V

    invoke-virtual {p1, v1}, Lcom/prolificinteractive/materialcalendarview/CalendarPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2005
    iget p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->selectionMode:I

    if-ne p1, v2, :cond_8

    iget-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    .line 2006
    invoke-virtual {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->getSelectedDates()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    .line 2007
    invoke-virtual {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->getSelectedDates()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    goto :goto_4

    .line 2008
    :cond_8
    invoke-static {}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->today()Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object p1

    .line 2005
    :goto_4
    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setCurrentDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    if-eqz v0, :cond_9

    .line 2011
    iget-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pager:Lcom/prolificinteractive/materialcalendarview/CalendarPager;

    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v1, v0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->getIndexForDay(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/prolificinteractive/materialcalendarview/CalendarPager;->setCurrentItem(I)V

    .line 2014
    :cond_9
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->invalidateDecorators()V

    .line 2015
    invoke-direct {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->updateUi()V

    return-void
.end method

.method private dpToPx(I)I
    .locals 2

    int-to-float p1, p1

    .line 596
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    .line 595
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method private static getThemeAccentColor(Landroid/content/Context;)I
    .locals 4

    .line 1226
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const v0, 0x1010435

    goto :goto_0

    .line 1230
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "colorAccent"

    const-string v3, "attr"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1232
    :goto_0
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 1233
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1234
    iget p0, v1, Landroid/util/TypedValue;->data:I

    return p0
.end method

.method private getWeekCountBasedOnMode()I
    .locals 3

    .line 1655
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->calendarMode:Lcom/prolificinteractive/materialcalendarview/CalendarMode;

    iget v0, v0, Lcom/prolificinteractive/materialcalendarview/CalendarMode;->visibleWeeksCount:I

    .line 1656
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->calendarMode:Lcom/prolificinteractive/materialcalendarview/CalendarMode;

    sget-object v2, Lcom/prolificinteractive/materialcalendarview/CalendarMode;->MONTHS:Lcom/prolificinteractive/materialcalendarview/CalendarMode;

    invoke-virtual {v1, v2}, Lcom/prolificinteractive/materialcalendarview/CalendarMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1657
    iget-boolean v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->mDynamicHeightEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pager:Lcom/prolificinteractive/materialcalendarview/CalendarPager;

    if-eqz v2, :cond_0

    .line 1658
    invoke-virtual {v2}, Lcom/prolificinteractive/materialcalendarview/CalendarPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->getItem(I)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    const/4 v1, 0x5

    .line 1659
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1661
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getFirstDayOfWeek()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    const/4 v1, 0x4

    .line 1662
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private setRangeDates(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V
    .locals 2

    .line 1130
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->currentMonth:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 1131
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v1, p1, p2}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->setRangeDates(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 1132
    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->currentMonth:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    if-eqz p1, :cond_1

    .line 1134
    invoke-virtual {p1, v0}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->isAfter(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->currentMonth:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    :goto_0
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->currentMonth:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 1136
    :cond_1
    iget-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {p1, v0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->getIndexForDay(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)I

    move-result p1

    .line 1137
    iget-object p2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pager:Lcom/prolificinteractive/materialcalendarview/CalendarPager;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/prolificinteractive/materialcalendarview/CalendarPager;->setCurrentItem(IZ)V

    .line 1138
    invoke-direct {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->updateUi()V

    return-void
.end method

.method private setupChildren()V
    .locals 8

    .line 403
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->topbar:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    .line 404
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 405
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->topbar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 406
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->topbar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 407
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->topbar:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$LayoutParams;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$LayoutParams;-><init>(I)V

    invoke-virtual {p0, v0, v2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 409
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->buttonPast:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Lcom/prolificinteractive/materialcalendarview/DirectionButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 410
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->topbar:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->buttonPast:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v4, v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 412
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->title:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 413
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->topbar:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->title:Landroid/widget/TextView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x40a00000    # 5.0f

    invoke-direct {v4, v1, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 417
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->buttonFuture:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Lcom/prolificinteractive/materialcalendarview/DirectionButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 418
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->topbar:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->buttonFuture:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 420
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pager:Lcom/prolificinteractive/materialcalendarview/CalendarPager;

    sget v1, Lcom/prolificinteractive/materialcalendarview/R$id;->mcv_pager:I

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/CalendarPager;->setId(I)V

    .line 421
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pager:Lcom/prolificinteractive/materialcalendarview/CalendarPager;

    invoke-virtual {v0, v3}, Lcom/prolificinteractive/materialcalendarview/CalendarPager;->setOffscreenPageLimit(I)V

    .line 422
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pager:Lcom/prolificinteractive/materialcalendarview/CalendarPager;

    new-instance v1, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$LayoutParams;

    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->calendarMode:Lcom/prolificinteractive/materialcalendarview/CalendarMode;

    iget v2, v2, Lcom/prolificinteractive/materialcalendarview/CalendarMode;->visibleWeeksCount:I

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$LayoutParams;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static showDecoratedDisabled(I)Z
    .locals 0
    .param p0    # I
        .annotation runtime Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$ShowOtherDates;
        .end annotation
    .end param

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static showOtherMonths(I)Z
    .locals 1
    .param p0    # I
        .annotation runtime Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$ShowOtherDates;
        .end annotation
    .end param

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static showOutOfRange(I)Z
    .locals 0
    .param p0    # I
        .annotation runtime Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$ShowOtherDates;
        .end annotation
    .end param

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private updateUi()V
    .locals 2

    .line 426
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->titleChanger:Lcom/prolificinteractive/materialcalendarview/TitleChanger;

    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->currentMonth:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->change(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 427
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->buttonPast:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->canGoBack()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/DirectionButton;->setEnabled(Z)V

    .line 428
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->buttonFuture:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->canGoForward()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/DirectionButton;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public addDecorator(Lcom/prolificinteractive/materialcalendarview/DayViewDecorator;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1297
    :cond_0
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->dayViewDecorators:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1298
    iget-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->dayViewDecorators:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->setDecorators(Ljava/util/List;)V

    return-void
.end method

.method public addDecorators(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/prolificinteractive/materialcalendarview/DayViewDecorator;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1275
    :cond_0
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->dayViewDecorators:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1276
    iget-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->dayViewDecorators:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->setDecorators(Ljava/util/List;)V

    return-void
.end method

.method public varargs addDecorators([Lcom/prolificinteractive/materialcalendarview/DayViewDecorator;)V
    .locals 0

    .line 1285
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->addDecorators(Ljava/util/Collection;)V

    return-void
.end method

.method public allowClickDaysOutsideCurrentMonth()Z
    .locals 1

    .line 987
    iget-boolean v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->allowClickDaysOutsideCurrentMonth:Z

    return v0
.end method

.method public canGoBack()Z
    .locals 1

    .line 626
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pager:Lcom/prolificinteractive/materialcalendarview/CalendarPager;

    invoke-virtual {v0}, Lcom/prolificinteractive/materialcalendarview/CalendarPager;->getCurrentItem()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canGoForward()Z
    .locals 3

    .line 606
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pager:Lcom/prolificinteractive/materialcalendarview/CalendarPager;

    invoke-virtual {v0}, Lcom/prolificinteractive/materialcalendarview/CalendarPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1739
    instance-of p1, p1, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$LayoutParams;

    return p1
.end method

.method public clearSelection()V
    .locals 3

    .line 786
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getSelectedDates()Ljava/util/List;

    move-result-object v0

    .line 787
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->clearSelections()V

    .line 788
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    const/4 v2, 0x0

    .line 789
    invoke-virtual {p0, v1, v2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->dispatchOnDateSelected(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected dispatchOnDateSelected(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Z)V
    .locals 1

    .line 1374
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->listener:Lcom/prolificinteractive/materialcalendarview/OnDateSelectedListener;

    if-eqz v0, :cond_0

    .line 1376
    invoke-interface {v0, p0, p1, p2}, Lcom/prolificinteractive/materialcalendarview/OnDateSelectedListener;->onDateSelected(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;Lcom/prolificinteractive/materialcalendarview/CalendarDay;Z)V

    :cond_0
    return-void
.end method

.method protected dispatchOnMonthChanged(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V
    .locals 1

    .line 1414
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->monthListener:Lcom/prolificinteractive/materialcalendarview/OnMonthChangedListener;

    if-eqz v0, :cond_0

    .line 1416
    invoke-interface {v0, p0, p1}, Lcom/prolificinteractive/materialcalendarview/OnMonthChangedListener;->onMonthChanged(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    :cond_0
    return-void
.end method

.method protected dispatchOnRangeSelected(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V
    .locals 5

    .line 1387
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->rangeListener:Lcom/prolificinteractive/materialcalendarview/OnRangeSelectedListener;

    .line 1388
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1390
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 1391
    invoke-virtual {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getDate()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1393
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 1394
    invoke-virtual {p2}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getDate()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1396
    :goto_0
    invoke-virtual {v2, p1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {v2, p1}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    .line 1404
    invoke-interface {v0, p0, v1}, Lcom/prolificinteractive/materialcalendarview/OnRangeSelectedListener;->onRangeSelected(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;Ljava/util/List;)V

    :cond_1
    return-void

    .line 1397
    :cond_2
    :goto_1
    invoke-static {v2}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->from(Ljava/util/Calendar;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object p2

    .line 1398
    iget-object v3, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    const/4 v4, 0x1

    invoke-virtual {v3, p2, v4}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->setDateSelected(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Z)V

    .line 1399
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x5

    .line 1400
    invoke-virtual {v2, p2, v4}, Ljava/util/Calendar;->add(II)V

    goto :goto_0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 1126
    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 1121
    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->generateDefaultLayoutParams()Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$LayoutParams;
    .locals 2

    .line 1548
    new-instance v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$LayoutParams;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$LayoutParams;-><init>(I)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 67
    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1744
    new-instance p1, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$LayoutParams;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$LayoutParams;-><init>(I)V

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$LayoutParams;
    .locals 1

    .line 1726
    new-instance p1, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$LayoutParams;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$LayoutParams;-><init>(I)V

    return-object p1
.end method

.method public getArrowColor()I
    .locals 1

    .line 656
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->arrowColor:I

    return v0
.end method

.method public getCalendarContentDescription()Ljava/lang/CharSequence;
    .locals 2

    .line 705
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->calendarContentDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 707
    :cond_0
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/prolificinteractive/materialcalendarview/R$string;->calendar:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getCurrentDate()Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .locals 2

    .line 862
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pager:Lcom/prolificinteractive/materialcalendarview/CalendarPager;

    invoke-virtual {v1}, Lcom/prolificinteractive/materialcalendarview/CalendarPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->getItem(I)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v0

    return-object v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    .line 1241
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->firstDayOfWeek:I

    return v0
.end method

.method public getLeftArrowMask()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 714
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->leftArrowMask:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getMaximumDate()Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .locals 1

    .line 896
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    return-object v0
.end method

.method public getMinimumDate()Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .locals 1

    .line 889
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    return-object v0
.end method

.method public getRightArrowMask()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 729
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->rightArrowMask:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSelectedDate()Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .locals 2

    .line 766
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->getSelectedDates()Ljava/util/List;

    move-result-object v0

    .line 767
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 770
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    return-object v0
.end method

.method public getSelectedDates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/prolificinteractive/materialcalendarview/CalendarDay;",
            ">;"
        }
    .end annotation

    .line 779
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->getSelectedDates()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSelectionColor()I
    .locals 1

    .line 633
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->accentColor:I

    return v0
.end method

.method public getSelectionMode()I
    .locals 1
    .annotation runtime Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SelectionMode;
    .end annotation

    .line 509
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->selectionMode:I

    return v0
.end method

.method public getShowOtherDates()I
    .locals 1
    .annotation runtime Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$ShowOtherDates;
    .end annotation

    .line 980
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->getShowOtherDates()I

    move-result v0

    return v0
.end method

.method public getTileHeight()I
    .locals 1

    .line 548
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->tileHeight:I

    return v0
.end method

.method public getTileSize()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 520
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->tileHeight:I

    iget v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->tileWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getTileWidth()I
    .locals 1

    .line 573
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->tileWidth:I

    return v0
.end method

.method public getTitleAnimationOrientation()I
    .locals 1

    .line 1043
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->titleChanger:Lcom/prolificinteractive/materialcalendarview/TitleChanger;

    invoke-virtual {v0}, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->getOrientation()I

    move-result v0

    return v0
.end method

.method public getTopbarVisible()Z
    .locals 1

    .line 1062
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->topbar:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public goToNext()V
    .locals 3

    .line 492
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pager:Lcom/prolificinteractive/materialcalendarview/CalendarPager;

    invoke-virtual {v0}, Lcom/prolificinteractive/materialcalendarview/CalendarPager;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, v2}, Lcom/prolificinteractive/materialcalendarview/CalendarPager;->setCurrentItem(IZ)V

    :cond_0
    return-void
.end method

.method public goToPrevious()V
    .locals 3

    .line 481
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pager:Lcom/prolificinteractive/materialcalendarview/CalendarPager;

    invoke-virtual {v0}, Lcom/prolificinteractive/materialcalendarview/CalendarPager;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1, v2}, Lcom/prolificinteractive/materialcalendarview/CalendarPager;->setCurrentItem(IZ)V

    :cond_0
    return-void
.end method

.method public invalidateDecorators()V
    .locals 1

    .line 1324
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->invalidateDecorators()V

    return-void
.end method

.method public isDynamicHeightEnabled()Z
    .locals 1

    .line 1261
    iget-boolean v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->mDynamicHeightEnabled:Z

    return v0
.end method

.method public isPagingEnabled()Z
    .locals 1

    .line 1790
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pager:Lcom/prolificinteractive/materialcalendarview/CalendarPager;

    invoke-virtual {v0}, Lcom/prolificinteractive/materialcalendarview/CalendarPager;->isPagingEnabled()Z

    move-result v0

    return v0
.end method

.method public newState()Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;
    .locals 1

    .line 1804
    new-instance v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;

    invoke-direct {v0, p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;-><init>(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)V

    return-object v0
.end method

.method protected onDateClicked(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Z)V
    .locals 4

    .line 1428
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->selectionMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v0, v2, :cond_0

    .line 1455
    iget-object p2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {p2}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->clearSelections()V

    .line 1456
    iget-object p2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {p2, p1, v3}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->setDateSelected(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Z)V

    .line 1457
    invoke-virtual {p0, p1, v3}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->dispatchOnDateSelected(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Z)V

    goto/16 :goto_0

    .line 1435
    :cond_0
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->setDateSelected(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Z)V

    .line 1436
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->getSelectedDates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 1437
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->clearSelections()V

    .line 1438
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->setDateSelected(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Z)V

    .line 1439
    invoke-virtual {p0, p1, p2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->dispatchOnDateSelected(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Z)V

    goto :goto_0

    .line 1440
    :cond_1
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->getSelectedDates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 1441
    iget-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->getSelectedDates()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    .line 1442
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->isAfter(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1443
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {p0, v0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->dispatchOnRangeSelected(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    goto :goto_0

    .line 1445
    :cond_2
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {p0, p2, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->dispatchOnRangeSelected(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    goto :goto_0

    .line 1448
    :cond_3
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->setDateSelected(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Z)V

    .line 1449
    invoke-virtual {p0, p1, p2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->dispatchOnDateSelected(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Z)V

    goto :goto_0

    .line 1430
    :cond_4
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->setDateSelected(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Z)V

    .line 1431
    invoke-virtual {p0, p1, p2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->dispatchOnDateSelected(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Z)V

    :goto_0
    return-void
.end method

.method protected onDateClicked(Lcom/prolificinteractive/materialcalendarview/DayView;)V
    .locals 6

    .line 1484
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getCurrentDate()Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v0

    .line 1485
    invoke-virtual {p1}, Lcom/prolificinteractive/materialcalendarview/DayView;->getDate()Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v1

    .line 1486
    invoke-virtual {v0}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getMonth()I

    move-result v2

    .line 1487
    invoke-virtual {v1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getMonth()I

    move-result v3

    .line 1489
    iget-object v4, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->calendarMode:Lcom/prolificinteractive/materialcalendarview/CalendarMode;

    sget-object v5, Lcom/prolificinteractive/materialcalendarview/CalendarMode;->MONTHS:Lcom/prolificinteractive/materialcalendarview/CalendarMode;

    if-ne v4, v5, :cond_1

    iget-boolean v4, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->allowClickDaysOutsideCurrentMonth:Z

    if-eqz v4, :cond_1

    if-eq v2, v3, :cond_1

    .line 1492
    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->isAfter(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1493
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->goToPrevious()V

    goto :goto_0

    .line 1494
    :cond_0
    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->isBefore(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1495
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->goToNext()V

    .line 1498
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/prolificinteractive/materialcalendarview/DayView;->getDate()Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v0

    invoke-virtual {p1}, Lcom/prolificinteractive/materialcalendarview/DayView;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->onDateClicked(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Z)V

    return-void
.end method

.method protected onDateUnselected(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V
    .locals 1

    const/4 v0, 0x0

    .line 1508
    invoke-virtual {p0, p1, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->dispatchOnDateSelected(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Z)V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1750
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1751
    const-class v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 1756
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1757
    const-class v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .line 1696
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getChildCount()I

    move-result p1

    .line 1698
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p4, p2

    sub-int/2addr p4, p3

    .line 1699
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getPaddingRight()I

    move-result p2

    sub-int/2addr p4, p2

    .line 1701
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getPaddingTop()I

    move-result p2

    const/4 p5, 0x0

    :goto_0
    if-ge p5, p1, :cond_1

    .line 1704
    invoke-virtual {p0, p5}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1705
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 1709
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 1710
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int v3, p4, v1

    .line 1712
    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, p3

    add-int/2addr v1, v3

    add-int/2addr v2, p2

    .line 1715
    invoke-virtual {v0, v3, p2, v1, v2}, Landroid/view/View;->layout(IIII)V

    move p2, v2

    :goto_1
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10

    .line 1556
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1557
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1558
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 1559
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 1562
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v0, v4

    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v0, v4

    .line 1563
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v2, v4

    .line 1565
    invoke-direct {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getWeekCountBasedOnMode()I

    move-result v4

    .line 1567
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getTopbarVisible()Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    .line 1570
    :cond_0
    div-int/lit8 v0, v0, 0x7

    .line 1571
    div-int/2addr v2, v4

    .line 1577
    iget v5, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->tileWidth:I

    const/16 v6, -0xa

    const/4 v7, -0x1

    const/high16 v8, 0x40000000    # 2.0f

    if-ne v5, v6, :cond_7

    iget v9, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->tileHeight:I

    if-eq v9, v6, :cond_1

    goto :goto_3

    :cond_1
    if-eq v1, v8, :cond_5

    const/high16 v5, -0x80000000

    if-ne v1, v5, :cond_2

    goto :goto_1

    :cond_2
    if-eq v3, v8, :cond_4

    if-ne v3, v5, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    goto :goto_2

    :cond_4
    :goto_0
    move v0, v2

    goto :goto_2

    :cond_5
    :goto_1
    if-ne v3, v8, :cond_6

    .line 1593
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_6
    :goto_2
    const/4 v2, -0x1

    goto :goto_5

    :cond_7
    :goto_3
    if-lez v5, :cond_8

    move v0, v5

    .line 1584
    :cond_8
    iget v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->tileHeight:I

    if-lez v1, :cond_9

    move v7, v0

    move v2, v1

    goto :goto_4

    :cond_9
    move v7, v0

    :goto_4
    const/4 v0, -0x1

    :goto_5
    if-lez v0, :cond_a

    move v2, v0

    goto :goto_7

    :cond_a
    if-gtz v0, :cond_d

    const/16 v0, 0x2c

    if-gtz v7, :cond_b

    .line 1610
    invoke-direct {p0, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->dpToPx(I)I

    move-result v1

    goto :goto_6

    :cond_b
    move v1, v7

    :goto_6
    if-gtz v2, :cond_c

    .line 1614
    invoke-direct {p0, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->dpToPx(I)I

    move-result v0

    move v2, v0

    :cond_c
    move v0, v1

    goto :goto_7

    :cond_d
    move v0, v7

    :goto_7
    mul-int/lit8 v0, v0, 0x7

    mul-int v4, v4, v2

    .line 1623
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getPaddingRight()I

    move-result v3

    add-int/2addr v1, v3

    add-int/2addr v1, v0

    .line 1624
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getPaddingBottom()I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v4, v3

    .line 1629
    invoke-static {v1, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->clampSize(II)I

    move-result p1

    .line 1630
    invoke-static {v4, p2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->clampSize(II)I

    move-result p2

    .line 1627
    invoke-virtual {p0, p1, p2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setMeasuredDimension(II)V

    .line 1633
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_8
    if-ge p2, p1, :cond_e

    .line 1636
    invoke-virtual {p0, p2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1638
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$LayoutParams;

    .line 1640
    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1645
    iget v3, v3, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$LayoutParams;->height:I

    mul-int v3, v3, v2

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1650
    invoke-virtual {v1, v4, v3}, Landroid/view/View;->measure(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    :cond_e
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .line 1091
    check-cast p1, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;

    .line 1092
    invoke-virtual {p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1093
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->newState()Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;

    move-result-object v0

    iget v1, p1, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->firstDayOfWeek:I

    .line 1094
    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->setFirstDayOfWeek(I)Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->calendarMode:Lcom/prolificinteractive/materialcalendarview/CalendarMode;

    .line 1095
    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->setCalendarDisplayMode(Lcom/prolificinteractive/materialcalendarview/CalendarMode;)Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 1096
    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->setMinimumDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 1097
    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->setMaximumDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;

    move-result-object v0

    iget-boolean v1, p1, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->cacheCurrentPosition:Z

    .line 1098
    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->isCacheCalendarPositionEnabled(Z)Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;

    move-result-object v0

    .line 1099
    invoke-virtual {v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->commit()V

    .line 1101
    iget v0, p1, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->color:I

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setSelectionColor(I)V

    .line 1102
    iget v0, p1, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->dateTextAppearance:I

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setDateTextAppearance(I)V

    .line 1103
    iget v0, p1, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->weekDayTextAppearance:I

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setWeekDayTextAppearance(I)V

    .line 1104
    iget v0, p1, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->showOtherDates:I

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setShowOtherDates(I)V

    .line 1105
    iget-boolean v0, p1, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->allowClickDaysOutsideCurrentMonth:Z

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setAllowClickDaysOutsideCurrentMonth(Z)V

    .line 1106
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->clearSelection()V

    .line 1107
    iget-object v0, p1, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->selectedDates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    const/4 v2, 0x1

    .line 1108
    invoke-virtual {p0, v1, v2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setDateSelected(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Z)V

    goto :goto_0

    .line 1110
    :cond_0
    iget v0, p1, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->orientation:I

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setTitleAnimationOrientation(I)V

    .line 1111
    iget v0, p1, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->tileWidthPx:I

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setTileWidth(I)V

    .line 1112
    iget v0, p1, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->tileHeightPx:I

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setTileHeight(I)V

    .line 1113
    iget-boolean v0, p1, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->topbarVisible:Z

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setTopbarVisible(Z)V

    .line 1114
    iget v0, p1, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->selectionMode:I

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setSelectionMode(I)V

    .line 1115
    iget-boolean v0, p1, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->dynamicHeightEnabled:Z

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setDynamicHeightEnabled(Z)V

    .line 1116
    iget-object p1, p1, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->currentMonth:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setCurrentDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1067
    new-instance v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1068
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getSelectionColor()I

    move-result v1

    iput v1, v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->color:I

    .line 1069
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->getDateTextAppearance()I

    move-result v1

    iput v1, v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->dateTextAppearance:I

    .line 1070
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->getWeekDayTextAppearance()I

    move-result v1

    iput v1, v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->weekDayTextAppearance:I

    .line 1071
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getShowOtherDates()I

    move-result v1

    iput v1, v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->showOtherDates:I

    .line 1072
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->allowClickDaysOutsideCurrentMonth()Z

    move-result v1

    iput-boolean v1, v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->allowClickDaysOutsideCurrentMonth:Z

    .line 1073
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getMinimumDate()Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v1

    iput-object v1, v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 1074
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getMaximumDate()Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v1

    iput-object v1, v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 1075
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getSelectedDates()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->selectedDates:Ljava/util/List;

    .line 1076
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getFirstDayOfWeek()I

    move-result v1

    iput v1, v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->firstDayOfWeek:I

    .line 1077
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getTitleAnimationOrientation()I

    move-result v1

    iput v1, v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->orientation:I

    .line 1078
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getSelectionMode()I

    move-result v1

    iput v1, v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->selectionMode:I

    .line 1079
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getTileWidth()I

    move-result v1

    iput v1, v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->tileWidthPx:I

    .line 1080
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getTileHeight()I

    move-result v1

    iput v1, v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->tileHeightPx:I

    .line 1081
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getTopbarVisible()Z

    move-result v1

    iput-boolean v1, v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->topbarVisible:Z

    .line 1082
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->calendarMode:Lcom/prolificinteractive/materialcalendarview/CalendarMode;

    iput-object v1, v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->calendarMode:Lcom/prolificinteractive/materialcalendarview/CalendarMode;

    .line 1083
    iget-boolean v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->mDynamicHeightEnabled:Z

    iput-boolean v1, v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->dynamicHeightEnabled:Z

    .line 1084
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->currentMonth:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    iput-object v1, v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->currentMonth:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 1085
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->state:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;

    invoke-static {v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;->access$700(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->cacheCurrentPosition:Z

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 617
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pager:Lcom/prolificinteractive/materialcalendarview/CalendarPager;

    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public removeDecorator(Lcom/prolificinteractive/materialcalendarview/DayViewDecorator;)V
    .locals 1

    .line 1315
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->dayViewDecorators:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1316
    iget-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->dayViewDecorators:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->setDecorators(Ljava/util/List;)V

    return-void
.end method

.method public removeDecorators()V
    .locals 2

    .line 1305
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->dayViewDecorators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1306
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->dayViewDecorators:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->setDecorators(Ljava/util/List;)V

    return-void
.end method

.method public selectRange(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V
    .locals 1

    .line 1470
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->clearSelection()V

    .line 1471
    invoke-virtual {p1, p2}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->isAfter(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1472
    invoke-virtual {p0, p2, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->dispatchOnRangeSelected(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    goto :goto_0

    .line 1474
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->dispatchOnRangeSelected(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    :goto_0
    return-void
.end method

.method public setAllowClickDaysOutsideCurrentMonth(Z)V
    .locals 0

    .line 924
    iput-boolean p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->allowClickDaysOutsideCurrentMonth:Z

    return-void
.end method

.method public setArrowColor(I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 666
    :cond_0
    iput p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->arrowColor:I

    .line 667
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->buttonPast:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/DirectionButton;->setColor(I)V

    .line 668
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->buttonFuture:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/DirectionButton;->setColor(I)V

    .line 669
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->invalidate()V

    return-void
.end method

.method public setContentDescriptionArrowFuture(Ljava/lang/CharSequence;)V
    .locals 1

    .line 687
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->buttonFuture:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/DirectionButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setContentDescriptionArrowPast(Ljava/lang/CharSequence;)V
    .locals 1

    .line 678
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->buttonPast:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/DirectionButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setContentDescriptionCalendar(Ljava/lang/CharSequence;)V
    .locals 0

    .line 696
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->calendarContentDescription:Ljava/lang/CharSequence;

    return-void
.end method

.method public setCurrentDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V
    .locals 1

    const/4 v0, 0x1

    .line 869
    invoke-virtual {p0, p1, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setCurrentDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Z)V

    return-void
.end method

.method public setCurrentDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 880
    :cond_0
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->getIndexForDay(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)I

    move-result p1

    .line 881
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pager:Lcom/prolificinteractive/materialcalendarview/CalendarPager;

    invoke-virtual {v0, p1, p2}, Lcom/prolificinteractive/materialcalendarview/CalendarPager;->setCurrentItem(IZ)V

    .line 882
    invoke-direct {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->updateUi()V

    return-void
.end method

.method public setCurrentDate(Ljava/util/Calendar;)V
    .locals 0

    .line 848
    invoke-static {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->from(Ljava/util/Calendar;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setCurrentDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    return-void
.end method

.method public setCurrentDate(Ljava/util/Date;)V
    .locals 0

    .line 855
    invoke-static {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->from(Ljava/util/Date;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setCurrentDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    return-void
.end method

.method public setDateSelected(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 841
    :cond_0
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->setDateSelected(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Z)V

    return-void
.end method

.method public setDateSelected(Ljava/util/Calendar;Z)V
    .locals 0

    .line 822
    invoke-static {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->from(Ljava/util/Calendar;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setDateSelected(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Z)V

    return-void
.end method

.method public setDateSelected(Ljava/util/Date;Z)V
    .locals 0

    .line 830
    invoke-static {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->from(Ljava/util/Date;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setDateSelected(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Z)V

    return-void
.end method

.method public setDateTextAppearance(I)V
    .locals 1

    .line 751
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->setDateTextAppearance(I)V

    return-void
.end method

.method public setDayFormatter(Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;)V
    .locals 1

    .line 942
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    if-nez p1, :cond_0

    sget-object p1, Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;->DEFAULT:Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;

    :cond_0
    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->setDayFormatter(Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;)V

    return-void
.end method

.method public setDynamicHeightEnabled(Z)V
    .locals 0

    .line 1254
    iput-boolean p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->mDynamicHeightEnabled:Z

    return-void
.end method

.method public setHeaderTextAppearance(I)V
    .locals 2

    .line 744
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    return-void
.end method

.method public setLeftArrowMask(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 721
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->leftArrowMask:Landroid/graphics/drawable/Drawable;

    .line 722
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->buttonPast:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/DirectionButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setOnDateChangedListener(Lcom/prolificinteractive/materialcalendarview/OnDateSelectedListener;)V
    .locals 0

    .line 1337
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->listener:Lcom/prolificinteractive/materialcalendarview/OnDateSelectedListener;

    return-void
.end method

.method public setOnMonthChangedListener(Lcom/prolificinteractive/materialcalendarview/OnMonthChangedListener;)V
    .locals 0

    .line 1346
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->monthListener:Lcom/prolificinteractive/materialcalendarview/OnMonthChangedListener;

    return-void
.end method

.method public setOnRangeSelectedListener(Lcom/prolificinteractive/materialcalendarview/OnRangeSelectedListener;)V
    .locals 0

    .line 1355
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->rangeListener:Lcom/prolificinteractive/materialcalendarview/OnRangeSelectedListener;

    return-void
.end method

.method public setOnTitleClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1364
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setPagingEnabled(Z)V
    .locals 1

    .line 1782
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pager:Lcom/prolificinteractive/materialcalendarview/CalendarPager;

    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPager;->setPagingEnabled(Z)V

    .line 1783
    invoke-direct {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->updateUi()V

    return-void
.end method

.method public setRightArrowMask(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 736
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->rightArrowMask:Landroid/graphics/drawable/Drawable;

    .line 737
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->buttonFuture:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/DirectionButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSelectedDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V
    .locals 1

    .line 811
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->clearSelection()V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 813
    invoke-virtual {p0, p1, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setDateSelected(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Z)V

    :cond_0
    return-void
.end method

.method public setSelectedDate(Ljava/util/Calendar;)V
    .locals 0

    .line 797
    invoke-static {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->from(Ljava/util/Calendar;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setSelectedDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    return-void
.end method

.method public setSelectedDate(Ljava/util/Date;)V
    .locals 0

    .line 804
    invoke-static {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->from(Ljava/util/Date;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setSelectedDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    return-void
.end method

.method public setSelectionColor(I)V
    .locals 1

    if-nez p1, :cond_1

    .line 641
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const p1, -0x777778

    .line 647
    :cond_1
    iput p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->accentColor:I

    .line 648
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->setSelectionColor(I)V

    .line 649
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->invalidate()V

    return-void
.end method

.method public setSelectionMode(I)V
    .locals 5
    .param p1    # I
        .annotation runtime Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SelectionMode;
        .end annotation
    .end param

    .line 445
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->selectionMode:I

    .line 446
    iput p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->selectionMode:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq p1, v4, :cond_1

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_0

    .line 464
    iput v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->selectionMode:I

    if-eqz v0, :cond_3

    .line 467
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->clearSelection()V

    goto :goto_0

    .line 449
    :cond_0
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->clearSelection()V

    goto :goto_0

    :cond_1
    if-eq v0, v3, :cond_2

    if-ne v0, v2, :cond_3

    .line 456
    :cond_2
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getSelectedDates()Ljava/util/List;

    move-result-object p1

    .line 457
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 458
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getSelectedDate()Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setSelectedDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 472
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->selectionMode:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    invoke-virtual {p1, v1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->setSelectionEnabled(Z)V

    return-void
.end method

.method public setShowOtherDates(I)V
    .locals 1
    .param p1    # I
        .annotation runtime Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$ShowOtherDates;
        .end annotation
    .end param

    .line 912
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->setShowOtherDates(I)V

    return-void
.end method

.method public setTileHeight(I)V
    .locals 0

    .line 557
    iput p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->tileHeight:I

    .line 558
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->requestLayout()V

    return-void
.end method

.method public setTileHeightDp(I)V
    .locals 0

    .line 566
    invoke-direct {p0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->dpToPx(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setTileHeight(I)V

    return-void
.end method

.method public setTileSize(I)V
    .locals 0

    .line 531
    iput p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->tileWidth:I

    .line 532
    iput p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->tileHeight:I

    .line 533
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->requestLayout()V

    return-void
.end method

.method public setTileSizeDp(I)V
    .locals 0

    .line 541
    invoke-direct {p0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->dpToPx(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setTileSize(I)V

    return-void
.end method

.method public setTileWidth(I)V
    .locals 0

    .line 582
    iput p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->tileWidth:I

    .line 583
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->requestLayout()V

    return-void
.end method

.method public setTileWidthDp(I)V
    .locals 0

    .line 591
    invoke-direct {p0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->dpToPx(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setTileWidth(I)V

    return-void
.end method

.method public setTitleAnimationOrientation(I)V
    .locals 1

    .line 1034
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->titleChanger:Lcom/prolificinteractive/materialcalendarview/TitleChanger;

    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->setOrientation(I)V

    return-void
.end method

.method public setTitleFormatter(Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;)V
    .locals 1

    if-nez p1, :cond_0

    .line 997
    sget-object p1, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->DEFAULT_TITLE_FORMATTER:Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;

    .line 999
    :cond_0
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->titleChanger:Lcom/prolificinteractive/materialcalendarview/TitleChanger;

    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->setTitleFormatter(Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;)V

    .line 1000
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->setTitleFormatter(Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;)V

    .line 1001
    invoke-direct {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->updateUi()V

    return-void
.end method

.method public setTitleMonths(I)V
    .locals 1

    .line 1025
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setTitleMonths([Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleMonths([Ljava/lang/CharSequence;)V
    .locals 1

    .line 1013
    new-instance v0, Lcom/prolificinteractive/materialcalendarview/format/MonthArrayTitleFormatter;

    invoke-direct {v0, p1}, Lcom/prolificinteractive/materialcalendarview/format/MonthArrayTitleFormatter;-><init>([Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setTitleFormatter(Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;)V

    return-void
.end method

.method public setTopbarVisible(Z)V
    .locals 1

    .line 1054
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->topbar:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1055
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->requestLayout()V

    return-void
.end method

.method public setWeekDayFormatter(Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;)V
    .locals 1

    .line 933
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    if-nez p1, :cond_0

    sget-object p1, Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;->DEFAULT:Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;

    :cond_0
    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->setWeekDayFormatter(Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;)V

    return-void
.end method

.method public setWeekDayLabels(I)V
    .locals 1

    .line 966
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setWeekDayLabels([Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setWeekDayLabels([Ljava/lang/CharSequence;)V
    .locals 1

    .line 954
    new-instance v0, Lcom/prolificinteractive/materialcalendarview/format/ArrayWeekDayFormatter;

    invoke-direct {v0, p1}, Lcom/prolificinteractive/materialcalendarview/format/ArrayWeekDayFormatter;-><init>([Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setWeekDayFormatter(Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;)V

    return-void
.end method

.method public setWeekDayTextAppearance(I)V
    .locals 1

    .line 758
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->setWeekDayTextAppearance(I)V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public state()Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;
    .locals 1

    .line 1797
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->state:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;

    return-object v0
.end method
