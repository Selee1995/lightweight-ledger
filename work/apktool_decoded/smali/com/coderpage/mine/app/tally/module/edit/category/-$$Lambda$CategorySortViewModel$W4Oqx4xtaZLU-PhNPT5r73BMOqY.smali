.class public final synthetic Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategorySortViewModel$W4Oqx4xtaZLU-PhNPT5r73BMOqY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/coderpage/base/utils/ArrayUtils$Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategorySortViewModel$W4Oqx4xtaZLU-PhNPT5r73BMOqY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategorySortViewModel$W4Oqx4xtaZLU-PhNPT5r73BMOqY;

    invoke-direct {v0}, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategorySortViewModel$W4Oqx4xtaZLU-PhNPT5r73BMOqY;-><init>()V

    sput-object v0, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategorySortViewModel$W4Oqx4xtaZLU-PhNPT5r73BMOqY;->INSTANCE:Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategorySortViewModel$W4Oqx4xtaZLU-PhNPT5r73BMOqY;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(IILjava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;

    invoke-static {p1, p2, p3}, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortViewModel;->lambda$onSaveClick$0(IILcom/coderpage/mine/app/tally/persistence/model/CategoryModel;)V

    return-void
.end method
