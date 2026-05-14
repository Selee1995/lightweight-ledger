.class public Lcom/coderpage/mine/DataBinderMapperImpl;
.super Landroidx/databinding/DataBinderMapper;
.source "DataBinderMapperImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coderpage/mine/DataBinderMapperImpl$InnerLayoutIdLookup;,
        Lcom/coderpage/mine/DataBinderMapperImpl$InnerBrLookup;
    }
.end annotation


# static fields
.field private static final INTERNAL_LAYOUT_ID_LOOKUP:Landroid/util/SparseIntArray;

.field private static final LAYOUT_ACTIVITYSEARCH:I = 0x1

.field private static final LAYOUT_ACTIVITYSETTING:I = 0x2

.field private static final LAYOUT_DIALOGTIP:I = 0x3

.field private static final LAYOUT_MODULEHOMEACTIVITYHOME:I = 0x4

.field private static final LAYOUT_MODULEWEBACTIVITY:I = 0x5

.field private static final LAYOUT_TALLYDIALOGBACKUPFILESELECTITEM:I = 0x6

.field private static final LAYOUT_TALLYDIALOGMENU:I = 0x7

.field private static final LAYOUT_TALLYDIALOGMENUITEMMENU:I = 0x8

.field private static final LAYOUT_TALLYDIALOGSETBUDGETMONTH:I = 0x9

.field private static final LAYOUT_TALLYDIALOGTEXTEDIT:I = 0xa

.field private static final LAYOUT_TALLYITEMRECORDCOMMON:I = 0xb

.field private static final LAYOUT_TALLYITEMRECORDDATETITLE:I = 0xc

.field private static final LAYOUT_TALLYMODULEBACKUPACTIVITYBACKUPFILE:I = 0xd

.field private static final LAYOUT_TALLYMODULEBACKUPACTIVITYFILEMANAGER:I = 0xe

.field private static final LAYOUT_TALLYMODULEBACKUPITEMMANAGERFILE:I = 0xf

.field private static final LAYOUT_TALLYMODULECHARTITEMCATEGORYDATA:I = 0x10

.field private static final LAYOUT_TALLYMODULECHARTTALLYCHARTACTIVITY:I = 0x11

.field private static final LAYOUT_TALLYMODULEDEBUGACTIVITY:I = 0x12

.field private static final LAYOUT_TALLYMODULEDETAILRECORDDETAILACTIVITY:I = 0x13

.field private static final LAYOUT_TALLYMODULEEDITACTIVITYRECORDEDIT:I = 0x14

.field private static final LAYOUT_TALLYMODULEEDITCATEGORYACTIVITYEDIT:I = 0x15

.field private static final LAYOUT_TALLYMODULEEDITCATEGORYACTIVITYMANAGER:I = 0x16

.field private static final LAYOUT_TALLYMODULEEDITCATEGORYACTIVITYSORT:I = 0x17

.field private static final LAYOUT_TALLYMODULEEDITCATEGORYITEMCATEGORYICON:I = 0x18

.field private static final LAYOUT_TALLYMODULEEDITCATEGORYITEMMANAGERCATEGORY:I = 0x19

.field private static final LAYOUT_TALLYMODULEEDITCATEGORYITEMSORT:I = 0x1a

.field private static final LAYOUT_TALLYMODULEEDITFRAGMENT:I = 0x1b

.field private static final LAYOUT_TALLYMODULEEDITITEMRECORDCATEGORY:I = 0x1c

.field private static final LAYOUT_TALLYMODULEHOMEITEMBACKUPNOTICE:I = 0x1d

.field private static final LAYOUT_TALLYMODULEHOMEITEMMONTHINFO:I = 0x1e

.field private static final LAYOUT_TALLYMODULEHOMEITEMTODAYEXPENSE:I = 0x1f

.field private static final LAYOUT_TALLYMODULERECORDSACTIVITY:I = 0x20

.field private static final LAYOUT_TALLYMODULESEARCHITEMCLEARALL:I = 0x21

.field private static final LAYOUT_TALLYMODULESEARCHITEMHISTORY:I = 0x22


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 122
    new-instance v0, Landroid/util/SparseIntArray;

    const/16 v1, 0x22

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    sput-object v0, Lcom/coderpage/mine/DataBinderMapperImpl;->INTERNAL_LAYOUT_ID_LOOKUP:Landroid/util/SparseIntArray;

    const v2, 0x7f0b001b

    const/4 v3, 0x1

    .line 125
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0b001c

    const/4 v3, 0x2

    .line 126
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0b0031

    const/4 v3, 0x3

    .line 127
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0b003d

    const/4 v3, 0x4

    .line 128
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0b003e

    const/4 v3, 0x5

    .line 129
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0b0053

    const/4 v3, 0x6

    .line 130
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0b0054

    const/4 v3, 0x7

    .line 131
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0b0055

    const/16 v3, 0x8

    .line 132
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0b0056

    const/16 v3, 0x9

    .line 133
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0b0057

    const/16 v3, 0xa

    .line 134
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0b0058

    const/16 v3, 0xb

    .line 135
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0b0059

    const/16 v3, 0xc

    .line 136
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0b005a

    const/16 v3, 0xd

    .line 137
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0b005b

    const/16 v3, 0xe

    .line 138
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0b005c

    const/16 v3, 0xf

    .line 139
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0b005d

    const/16 v3, 0x10

    .line 140
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0b005f

    const/16 v3, 0x11

    .line 141
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0b0060

    const/16 v3, 0x12

    .line 142
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0b0061

    const/16 v3, 0x13

    .line 143
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0b0062

    const/16 v3, 0x14

    .line 144
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0b0063

    const/16 v3, 0x15

    .line 145
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0b0064

    const/16 v3, 0x16

    .line 146
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0b0065

    const/16 v3, 0x17

    .line 147
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0b0066

    const/16 v3, 0x18

    .line 148
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0b0067

    const/16 v3, 0x19

    .line 149
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0b0068

    const/16 v3, 0x1a

    .line 150
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0b0069

    const/16 v3, 0x1b

    .line 151
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0b006a

    const/16 v3, 0x1c

    .line 152
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0b006c

    const/16 v3, 0x1d

    .line 153
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0b006e

    const/16 v3, 0x1e

    .line 154
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0b006f

    const/16 v3, 0x1f

    .line 155
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0b0070

    const/16 v3, 0x20

    .line 156
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0b0071

    const/16 v3, 0x21

    .line 157
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0b0072

    .line 158
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Landroidx/databinding/DataBinderMapper;-><init>()V

    return-void
.end method


# virtual methods
.method public collectDependencies()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/databinding/DataBinderMapper;",
            ">;"
        }
    .end annotation

    .line 413
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 414
    new-instance v1, Landroidx/databinding/library/baseAdapters/DataBinderMapperImpl;

    invoke-direct {v1}, Landroidx/databinding/library/baseAdapters/DataBinderMapperImpl;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public convertBrIdToString(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "localId"
        }
    .end annotation

    .line 407
    sget-object v0, Lcom/coderpage/mine/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getDataBinder(Landroidx/databinding/DataBindingComponent;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "component",
            "view",
            "layoutId"
        }
    .end annotation

    .line 163
    sget-object v0, Lcom/coderpage/mine/DataBinderMapperImpl;->INTERNAL_LAYOUT_ID_LOOKUP:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseIntArray;->get(I)I

    move-result p3

    if-lez p3, :cond_23

    .line 165
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_22

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string p3, "layout/tally_module_search_item_history_0"

    .line 369
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 370
    new-instance p3, Lcom/coderpage/mine/module/search/ItemSearchHistoryBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/coderpage/mine/module/search/ItemSearchHistoryBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 372
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for tally_module_search_item_history is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    const-string p3, "layout/tally_module_search_item_clear_all_0"

    .line 363
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 364
    new-instance p3, Lcom/coderpage/mine/module/search/ItemClearAllBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/coderpage/mine/module/search/ItemClearAllBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 366
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for tally_module_search_item_clear_all is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_2
    const-string p3, "layout/tally_module_records_activity_0"

    .line 357
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 358
    new-instance p3, Lcom/coderpage/mine/module/records/RecordsActivityBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/coderpage/mine/module/records/RecordsActivityBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 360
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for tally_module_records_activity is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_3
    const-string p3, "layout/tally_module_home_item_today_expense_0"

    .line 351
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 352
    new-instance p3, Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 354
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for tally_module_home_item_today_expense is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_4
    const-string p3, "layout/tally_module_home_item_month_info_0"

    .line 345
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 346
    new-instance p3, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 348
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for tally_module_home_item_month_info is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_5
    const-string p3, "layout/tally_module_home_item_backup_notice_0"

    .line 339
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 340
    new-instance p3, Lcom/coderpage/mine/tally/module/home/BackupNoticeItemBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/coderpage/mine/tally/module/home/BackupNoticeItemBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 342
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for tally_module_home_item_backup_notice is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_6
    const-string p3, "layout/tally_module_edit_item_record_category_0"

    .line 333
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 334
    new-instance p3, Lcom/coderpage/mine/tally/module/edit/record/RecordCategoryItemBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/coderpage/mine/tally/module/edit/record/RecordCategoryItemBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 336
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for tally_module_edit_item_record_category is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_7
    const-string p3, "layout/tally_module_edit_fragment_0"

    .line 327
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 328
    new-instance p3, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 330
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for tally_module_edit_fragment is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_8
    const-string p3, "layout/tally_module_edit_category_item_sort_0"

    .line 321
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 322
    new-instance p3, Lcom/coderpage/mine/module/edit/category/ItemCategorySortBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/coderpage/mine/module/edit/category/ItemCategorySortBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 324
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for tally_module_edit_category_item_sort is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_9
    const-string p3, "layout/tally_module_edit_category_item_manager_category_0"

    .line 315
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_9

    .line 316
    new-instance p3, Lcom/coderpage/mine/module/edit/category/ItemManagerCategoryBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/coderpage/mine/module/edit/category/ItemManagerCategoryBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 318
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for tally_module_edit_category_item_manager_category is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_a
    const-string p3, "layout/tally_module_edit_category_item_category_icon_0"

    .line 309
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_a

    .line 310
    new-instance p3, Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 312
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for tally_module_edit_category_item_category_icon is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_b
    const-string p3, "layout/tally_module_edit_category_activity_sort_0"

    .line 303
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_b

    .line 304
    new-instance p3, Lcom/coderpage/mine/module/edit/category/CategorySortActivityBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/coderpage/mine/module/edit/category/CategorySortActivityBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 306
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for tally_module_edit_category_activity_sort is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_c
    const-string p3, "layout/tally_module_edit_category_activity_manager_0"

    .line 297
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_c

    .line 298
    new-instance p3, Lcom/coderpage/mine/module/edit/category/CategoryManagerActivityBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/coderpage/mine/module/edit/category/CategoryManagerActivityBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 300
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for tally_module_edit_category_activity_manager is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_d
    const-string p3, "layout/tally_module_edit_category_activity_edit_0"

    .line 291
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_d

    .line 292
    new-instance p3, Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 294
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for tally_module_edit_category_activity_edit is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_e
    const-string p3, "layout/tally_module_edit_activity_record_edit_0"

    .line 285
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_e

    .line 286
    new-instance p3, Lcom/coderpage/mine/tally/module/edit/RecordEditActivityBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/coderpage/mine/tally/module/edit/RecordEditActivityBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 288
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for tally_module_edit_activity_record_edit is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_f
    const-string p3, "layout/tally_module_detail_record_detail_activity_0"

    .line 279
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_f

    .line 280
    new-instance p3, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 282
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for tally_module_detail_record_detail_activity is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_10
    const-string p3, "layout/tally_module_debug_activity_0"

    .line 273
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_10

    .line 274
    new-instance p3, Lcom/coderpage/mine/module/debug/DebugActivityBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/coderpage/mine/module/debug/DebugActivityBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 276
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for tally_module_debug_activity is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_11
    const-string p3, "layout/tally_module_chart_tally_chart_activity_0"

    .line 267
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_11

    .line 268
    new-instance p3, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 270
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for tally_module_chart_tally_chart_activity is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_12
    const-string p3, "layout/tally_module_chart_item_category_data_0"

    .line 261
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_12

    .line 262
    new-instance p3, Lcom/coderpage/mine/module/chart/ItemCategoryDataBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/coderpage/mine/module/chart/ItemCategoryDataBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 264
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for tally_module_chart_item_category_data is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_13
    const-string p3, "layout/tally_module_backup_item_manager_file_0"

    .line 255
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_13

    .line 256
    new-instance p3, Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 258
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for tally_module_backup_item_manager_file is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_14
    const-string p3, "layout/tally_module_backup_activity_file_manager_0"

    .line 249
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_14

    .line 250
    new-instance p3, Lcom/coderpage/mine/module/backup/BackupFileManagerActivityBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/coderpage/mine/module/backup/BackupFileManagerActivityBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 252
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for tally_module_backup_activity_file_manager is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_15
    const-string p3, "layout/tally_module_backup_activity_backup_file_0"

    .line 243
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_15

    .line 244
    new-instance p3, Lcom/coderpage/mine/module/backup/BackupFileActivityBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/coderpage/mine/module/backup/BackupFileActivityBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 246
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for tally_module_backup_activity_backup_file is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_16
    const-string p3, "layout/tally_item_record_date_title_0"

    .line 237
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_16

    .line 238
    new-instance p3, Lcom/coderpage/mine/tally/module/records/RecordDateTitleItemBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/coderpage/mine/tally/module/records/RecordDateTitleItemBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 240
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for tally_item_record_date_title is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_17
    const-string p3, "layout/tally_item_record_common_0"

    .line 231
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_17

    .line 232
    new-instance p3, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 234
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for tally_item_record_common is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_18
    const-string p3, "layout/tally_dialog_text_edit_0"

    .line 225
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_18

    .line 226
    new-instance p3, Lcom/coderpage/mine/dialog/TextEditDialogBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/coderpage/mine/dialog/TextEditDialogBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 228
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for tally_dialog_text_edit is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_19
    const-string p3, "layout/tally_dialog_set_budget_month_0"

    .line 219
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_19

    .line 220
    new-instance p3, Lcom/coderpage/mine/dialog/BudgetMonthSetDialogBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/coderpage/mine/dialog/BudgetMonthSetDialogBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 222
    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for tally_dialog_set_budget_month is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1a
    const-string p3, "layout/tally_dialog_menu_item_menu_0"

    .line 213
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1a

    .line 214
    new-instance p3, Lcom/coderpage/mine/dialog/MenuDialogItemBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/coderpage/mine/dialog/MenuDialogItemBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 216
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for tally_dialog_menu_item_menu is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1b
    const-string p3, "layout/tally_dialog_menu_0"

    .line 207
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1b

    .line 208
    new-instance p3, Lcom/coderpage/mine/dialog/MenuDialogBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/coderpage/mine/dialog/MenuDialogBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 210
    :cond_1b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for tally_dialog_menu is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1c
    const-string p3, "layout/tally_dialog_backup_file_select_item_0"

    .line 201
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1c

    .line 202
    new-instance p3, Lcom/coderpage/mine/module/backup/ItemBackupFileSelectBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/coderpage/mine/module/backup/ItemBackupFileSelectBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 204
    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for tally_dialog_backup_file_select_item is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1d
    const-string p3, "layout-v21/module_web_activity_0"

    .line 195
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1d

    .line 196
    new-instance p3, Lcom/coderpage/mine/module/web/WebActivityBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/coderpage/mine/module/web/WebActivityBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 198
    :cond_1d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for module_web_activity is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1e
    const-string p3, "layout/module_home_activity_home_0"

    .line 189
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1e

    .line 190
    new-instance p3, Lcom/coderpage/mine/app/tally/module/home/HomeActivityBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/coderpage/mine/app/tally/module/home/HomeActivityBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 192
    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for module_home_activity_home is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1f
    const-string p3, "layout/dialog_tip_0"

    .line 183
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1f

    .line 184
    new-instance p3, Lcom/coderpage/mine/dialog/TipDialogBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/coderpage/mine/dialog/TipDialogBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 186
    :cond_1f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for dialog_tip is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_20
    const-string p3, "layout/activity_setting_0"

    .line 177
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_20

    .line 178
    new-instance p3, Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 180
    :cond_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for activity_setting is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_21
    const-string p3, "layout/activity_search_0"

    .line 171
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_21

    .line 172
    new-instance p3, Lcom/coderpage/mine/module/search/SearchActivityBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/coderpage/mine/module/search/SearchActivityBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 174
    :cond_21
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for activity_search is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 167
    :cond_22
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_23
    :goto_0
    const/4 p1, 0x0

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDataBinder(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "component",
            "views",
            "layoutId"
        }
    .end annotation

    const/4 p1, 0x0

    if-eqz p2, :cond_2

    .line 381
    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_0

    .line 384
    :cond_0
    sget-object v0, Lcom/coderpage/mine/DataBinderMapperImpl;->INTERNAL_LAYOUT_ID_LOOKUP:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseIntArray;->get(I)I

    move-result p3

    if-lez p3, :cond_2

    const/4 p3, 0x0

    .line 386
    aget-object p2, p2, p3

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 388
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method public getLayoutId(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 401
    :cond_0
    sget-object v1, Lcom/coderpage/mine/DataBinderMapperImpl$InnerLayoutIdLookup;->sKeys:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_1

    goto :goto_0

    .line 402
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method
