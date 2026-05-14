.class public final synthetic Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategorySortViewModel$Kfy2-Q8Su-bgp-XevfPDR8jQE_I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/coderpage/base/utils/ArrayUtils$Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategorySortViewModel$Kfy2-Q8Su-bgp-XevfPDR8jQE_I;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategorySortViewModel$Kfy2-Q8Su-bgp-XevfPDR8jQE_I;

    invoke-direct {v0}, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategorySortViewModel$Kfy2-Q8Su-bgp-XevfPDR8jQE_I;-><init>()V

    sput-object v0, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategorySortViewModel$Kfy2-Q8Su-bgp-XevfPDR8jQE_I;->INSTANCE:Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategorySortViewModel$Kfy2-Q8Su-bgp-XevfPDR8jQE_I;

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

    invoke-static {p1, p2, p3}, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortViewModel;->lambda$onDrag2OrderClick$2(IILcom/coderpage/mine/app/tally/persistence/model/CategoryModel;)V

    return-void
.end method
