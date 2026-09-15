.class public Lcom/rmedia/rplayer/features/landing/LandingActivity;
.super Landroidx/appcompat/app/AppCompatActivity;


# instance fields
.field private buttonLogin:Lcom/google/android/material/button/MaterialButton;

.field private buttonSignUp:Lcom/google/android/material/button/MaterialButton;

.field private buttonSkip:Lcom/google/android/material/button/MaterialButton;

.field private button_language:Lcom/google/android/material/button/MaterialButton;

.field private localeManager:Lcom/rmedia/rplayer/helpers/LocaleManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static synthetic g(Lcom/rmedia/rplayer/features/landing/LandingActivity;Lj6;Lcom/rmedia/rplayer/models/Language;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/rmedia/rplayer/features/landing/LandingActivity;->lambda$showAppLanguageDialog$4(Lj6;Lcom/rmedia/rplayer/models/Language;)V

    return-void
.end method

.method private getAppLanguages()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/rmedia/rplayer/models/Language;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/rmedia/rplayer/models/Language;

    const-string v2, "en"

    const-string v3, "en-US"

    const-string v4, "English"

    invoke-direct {v1, v4, v2, v3}, Lcom/rmedia/rplayer/models/Language;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/rmedia/rplayer/models/Language;

    const-string v2, "fr"

    const-string v3, "fr-FR"

    const-string v4, "Francais (French)"

    invoke-direct {v1, v4, v2, v3}, Lcom/rmedia/rplayer/models/Language;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/rmedia/rplayer/models/Language;

    const-string v2, "ar"

    const-string v3, "ar-SA"

    const-string v4, "\u0627\u0644\u0639\u0631\u0628\u064a\u0629 (Arabic)"

    invoke-direct {v1, v4, v2, v3}, Lcom/rmedia/rplayer/models/Language;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/rmedia/rplayer/models/Language;

    const-string v2, "es"

    const-string v3, "es-ES"

    const-string v4, "Espa\u00f1ol (Spanish)"

    invoke-direct {v1, v4, v2, v3}, Lcom/rmedia/rplayer/models/Language;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/rmedia/rplayer/models/Language;

    const-string v2, "fa"

    const-string v3, "fa-IR"

    const-string v4, "\u0641\u0627\u0631\u0633\u06cc (Farsi/Persian)"

    invoke-direct {v1, v4, v2, v3}, Lcom/rmedia/rplayer/models/Language;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/rmedia/rplayer/models/Language;

    const-string v2, "T\u00fcrk\u00e7e (Turkish)"

    const-string v3, "tr"

    invoke-direct {v1, v2, v3, v3}, Lcom/rmedia/rplayer/models/Language;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/rmedia/rplayer/models/Language;

    const-string v2, "Bahasa Indonesia"

    const-string v3, "id"

    invoke-direct {v1, v2, v3, v3}, Lcom/rmedia/rplayer/models/Language;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/rmedia/rplayer/models/Language;

    const-string v2, "pt"

    const-string v3, "pt-BR"

    const-string v4, "Portugu\u00eas (Portuguese)"

    invoke-direct {v1, v4, v2, v3}, Lcom/rmedia/rplayer/models/Language;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/rmedia/rplayer/models/Language;

    const-string v2, "hi"

    const-string v3, "hi-IN"

    const-string v4, "\u0939\u093f\u0928\u094d\u0926\u0940 (Hindi)"

    invoke-direct {v1, v4, v2, v3}, Lcom/rmedia/rplayer/models/Language;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static synthetic h(Lcom/rmedia/rplayer/features/landing/LandingActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rmedia/rplayer/features/landing/LandingActivity;->lambda$setupListeners$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Lcom/rmedia/rplayer/features/landing/LandingActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rmedia/rplayer/features/landing/LandingActivity;->lambda$setupListeners$3(Landroid/view/View;)V

    return-void
.end method

.method private initializeViews()V
    .locals 2

    const v0, 0x7f0a00d7

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    iput-object v0, p0, Lcom/rmedia/rplayer/features/landing/LandingActivity;->buttonLogin:Lcom/google/android/material/button/MaterialButton;

    const v0, 0x7f0a00d6

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    iput-object v0, p0, Lcom/rmedia/rplayer/features/landing/LandingActivity;->button_language:Lcom/google/android/material/button/MaterialButton;

    const v0, 0x7f0a00dc

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    iput-object v0, p0, Lcom/rmedia/rplayer/features/landing/LandingActivity;->buttonSignUp:Lcom/google/android/material/button/MaterialButton;

    const v0, 0x7f0a00dd

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    iput-object v0, p0, Lcom/rmedia/rplayer/features/landing/LandingActivity;->buttonSkip:Lcom/google/android/material/button/MaterialButton;

    new-instance v0, Lcom/rmedia/rplayer/helpers/LocaleManager;

    invoke-direct {v0, p0}, Lcom/rmedia/rplayer/helpers/LocaleManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rmedia/rplayer/features/landing/LandingActivity;->localeManager:Lcom/rmedia/rplayer/helpers/LocaleManager;

    iget-object v1, p0, Lcom/rmedia/rplayer/features/landing/LandingActivity;->button_language:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0}, Lcom/rmedia/rplayer/helpers/LocaleManager;->getSavedLanguageCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic j(Lcom/rmedia/rplayer/features/landing/LandingActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rmedia/rplayer/features/landing/LandingActivity;->lambda$setupListeners$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic k(Lcom/rmedia/rplayer/features/landing/LandingActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rmedia/rplayer/features/landing/LandingActivity;->lambda$setupListeners$1(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$setupListeners$0(Landroid/view/View;)V
    .locals 1

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/rmedia/rplayer/features/auth/LoginActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$setupListeners$1(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/rmedia/rplayer/features/landing/LandingActivity;->showAppLanguageDialog()V

    return-void
.end method

.method private synthetic lambda$setupListeners$2(Landroid/view/View;)V
    .locals 1

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/rmedia/rplayer/features/auth/SignUpActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$setupListeners$3(Landroid/view/View;)V
    .locals 2

    const-string p1, "user_data"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "skipped_login"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/rmedia/rplayer/activities/MainActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "isGuest"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$showAppLanguageDialog$4(Lj6;Lcom/rmedia/rplayer/models/Language;)V
    .locals 1

    iget-object v0, p0, Lcom/rmedia/rplayer/features/landing/LandingActivity;->localeManager:Lcom/rmedia/rplayer/helpers/LocaleManager;

    iget-object p2, p2, Lcom/rmedia/rplayer/models/Language;->code:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/rmedia/rplayer/helpers/LocaleManager;->setLocale(Ljava/lang/String;)V

    invoke-virtual {p1}, Lw8;->dismiss()V

    return-void
.end method

.method private setupListeners()V
    .locals 3

    iget-object v0, p0, Lcom/rmedia/rplayer/features/landing/LandingActivity;->buttonLogin:Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Lhb1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lhb1;-><init>(Lcom/rmedia/rplayer/features/landing/LandingActivity;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/rmedia/rplayer/features/landing/LandingActivity;->button_language:Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Lhb1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lhb1;-><init>(Lcom/rmedia/rplayer/features/landing/LandingActivity;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/rmedia/rplayer/features/landing/LandingActivity;->buttonSignUp:Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Lhb1;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lhb1;-><init>(Lcom/rmedia/rplayer/features/landing/LandingActivity;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/rmedia/rplayer/features/landing/LandingActivity;->buttonSkip:Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Lhb1;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lhb1;-><init>(Lcom/rmedia/rplayer/features/landing/LandingActivity;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showAppLanguageDialog()V
    .locals 7

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d002f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lxi1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lxi1;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v0}, Lxi1;->h(Landroid/view/View;)V

    invoke-virtual {v1}, Lxi1;->create()Lj6;

    move-result-object v1

    const v3, 0x7f0a026f

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    const v4, 0x7f0a0413

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const v4, 0x7f13046f

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    new-instance v0, Lcom/rmedia/rplayer/helpers/LanguageAdapter;

    invoke-direct {p0}, Lcom/rmedia/rplayer/features/landing/LandingActivity;->getAppLanguages()Ljava/util/List;

    move-result-object v4

    new-instance v5, La60;

    const/16 v6, 0x10

    invoke-direct {v5, v6, p0, v1}, La60;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v4, v5}, Lcom/rmedia/rplayer/helpers/LanguageAdapter;-><init>(Ljava/util/List;Lcom/rmedia/rplayer/helpers/LanguageAdapter$OnLanguageClickListener;)V

    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>()V

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/f;)V

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/c;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "user_data"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "skipped_login"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/rmedia/rplayer/activities/MainActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "isGuest"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
