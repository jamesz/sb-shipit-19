--
-- PostgreSQL database dump
--

-- Dumped from database version 10.6
-- Dumped by pg_dump version 11.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: postgres; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';


ALTER DATABASE postgres OWNER TO postgres;

\connect postgres

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: clauses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clauses (
    id uuid NOT NULL,
    "firmId" uuid NOT NULL,
    "matterCategory" character varying(128) NOT NULL,
    "originalSource" character varying(256) NOT NULL,
    "clauseTitle" character varying(256) NOT NULL,
    "clauseText" text NOT NULL,
    "compareText" text DEFAULT ''::text,
    created timestamp without time zone DEFAULT now()
);


ALTER TABLE public.clauses OWNER TO postgres;

--
-- Name: table1; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.table1 (
    name character varying(50) NOT NULL
);


ALTER TABLE public.table1 OWNER TO postgres;

--
-- Data for Name: clauses; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('77449a12-4dbf-4d33-ab29-fdc187222ea9', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'AAA MASTER WILL PRECEDENT.doc', '', '6. I GIVE AND BEQUEATH the sum of (amount) to my (relation) (NAME) absolutely and free from death and estate duties, if any, and free from legal costs and disbursements.
', '', '2019-08-30 00:37:38.269535');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('3a885246-6362-46fd-abb1-ee793ae5e40a', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'AAA MASTER WILL PRECEDENT.doc', '', '10. I EMPOWER my Trustee/s to raise the whole or any part or parts of the expectant share whether capital or income of all or any of my beneficiaries who shall not have attained the age of twenty one (21) years at the time of my death and to apply the same pending the attainment by such beneficiary of the age of twenty one (21) years for or towards 
………………………. 
     ……………………….    

 ……………………….





     Andrew N. Sochacki

  Stephanie Foreman

(his/her/their) maintenance education advancement in life or benefit as my Trustee in (his/her/their) absolute discretion shall think fit.', '', '2019-08-30 00:37:38.323851');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('60779478-d4b5-41b2-abd6-690aa67091cb', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'Anthony Hamer NSW - Will_spouse_infant_children_siblings.doc', '', '2.     

I APPOINT my EXECUTOR 1relationship name (hereinafter referred to as "my Trustee" which expression shall where the context so admits include the trustees or trustee for the time being hereof whether original or substituted) to be executor and trustee of this my Will PROVIDED HOWEVER should my said EXECUTOR 1relationship predecease me or be unwilling or unable to act THEN I APPOINT my ALT EXECUTOR 1relationship name as my executrix and trustee in his place and stead PROVIDED FURTHER should my said ALT EXEC 1relationship predecease me or be unwilling or unable to act THEN I APPOINT my ALT EXE2relationship name as my executrix and trustee in her place and stead.
3.

I DIRECT that my Trustee shall pay all of my debts funeral and testamentary expenses including all duties and taxes payable as a consequence of my death as soon as conveniently may be after my death.

4.        

I GIVE the whole of my estate both real and personal of whatsoever nature and kind and wheresoever situate of or to which I may die possessed or entitled or over which I may have any power of disposition as at the date of my death to my EXECUTOR 1relationship name contingently upon him surviving me for a period of not less than thirty (30) days PROVIDED HOWEVER should my said EXEC 1relationship not survive me as aforesaid THEN I GIVE my said estate to my Trustee UPON TRUST for such of my children ASKnames as shall survive me and attain the age of twenty five (25) years and if more than one in equal shares PROVIDED FURTHER should none of my said children survive me as aforesaid THEN I GIVE my said estate to such of my AS BENEFICIARYrelationship name as shall survive me and if more than one in equal shares PROVIDED FURTHER should any of my said BENEFICIARYrelationship predecease me leaving issue living at the date of my death then such issue who survive me and attain the age of twenty five (25) years shall take and if more than one equally between them such share in my estate as his her or their parent would have taken had such parent survived me and attained a vested interest.

5.

I GIVE MY Trustee the following powers:



(i)
To sell, call in and convert into money the whole or such part as my Trustee shall think fit of my estate at such time or times, in such manner, at such price and upon such terms as my Trustee may think fit;



(ii)
To postpone the sale, calling in and conversion of my estate or any part thereof for so long as my Trustee, without being liable to account, shall think proper;



(iii)
To exercise all such statutory and other powers in regard to my estate as would be exercisable by my Trustee if my estate were devised and bequeathed to my Trustee in trust for sale;



(iv)
To invest my estate or any part thereof and to vary or transpose such investments in my Trustee''s absolute discretion as if my Trustee were the absolute beneficial owner thereof;



(v)
To borrow moneys on the security of all or any part or parts of my estate at such rates of interest and upon such terms as to repayment and in general as my Trustee shall think fit; and



(vi)
To apply for the maintenance, education, advancement or benefit of any beneficiary as my Trustee think fit the whole or any part of the capital of that part of my estate to which that beneficiary is entitled or may in future be entitled.

6.

I DIRECT that where capital gains tax is assessed against my Trustee either consequent upon my death or upon the sale of any asset of my estate by my Trustee such tax shall be a charge firstly upon the asset giving rise to the tax or upon the net proceeds of sale thereof (as the case may be) and secondly upon my estate.

7.

I APPOINT my GUARDIANMINORrelationship name as testamentary guardian of my infant children should my said husband /wife predecease me PROVIDED HOWEVER should my said GUARDIANMINORrelationship predecease me or be unwilling or unable to act then I appoint my GUARDIANMINORrelationship name in her place and stead.  
IN WITNESS whereof I have hereunto set my hand to this my last Will and Testament this            day of            

     2018.

	SIGNED by the Testatrix as her last Will and Testament in the presence of us both present at the same time who at her request and in her presence and in the presence of each other have hereunto subscribed our names as witnesses:
	)

)

)

)

)

)

)

)
	………………………………

Testatrix


	
	
	

	
	
	

	……………………………………
	
	……………………………………

	Witness Signature
	
	Witness Signature

	
	
	

	……………………………………
	
	……………………………………

	Witness Name
	
	Witness Name

	
	
	

	……………………………………
	
	……………………………………

	Witness Address
	
	Witness Address


DATED 
day of


2018
LAST WILL AND TESTAMENT

of

[ name]


ANTHONY HAMER & ASSOCIATES


Lawyers


6/2 St. Johns Avenue



PO Box 29



GORDON.  2072



Ph:   9498-8021



Fax:  9498-5551


', '', '2019-08-30 00:37:38.37387');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('05adf00e-420b-4719-8323-5ee482a37299', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'Precedent Will - Female Testatrix.docx', '', '3.1   Notwithstanding that any investments may be of a speculative nature or may not be income earning to invest my estate or any part or parts thereof in or upon:

3.1.1    the purchase of land of any tenure in Australia or elsewhere;

3.1.2	the shares stock debentures or other interests in or of any company incorporated in Australia or elsewhere and to pay calls on shares and to subscribe to new issues;

3.1.3	deposit with or without interest with any company incorporated in Australia or elsewhere and in particular with any bank;

3.1.4	units or sub units of any fixed or flexible unit trust in Australia or elsewhere or any of the States or Territories of Australia which is 
established or managed by any company and of which a trustee company under the Trustee Companies Act 1984, or an insurance company is the trustee;

3.1.5	any of the modes of investment for the time being authorised or permitted by the respective laws of Australia or elsewhere or any of the 
States or Territories of Australia for the investment of trust moneys;

3.2 So long as any real property or interest in real property forms part of my estate to manage use and lease or let the same or any part or parts thereof to erect pull down rebuild and repair buildings and improvements thereon to carry out improvements of any nature to make allowances to and arrangements with tenants to acquire easements or other rights and generally to deal with such property or interest or join in dealing with the same as if beneficially entitled thereto, without being responsible for loss.

3.3	To borrow or raise or concur in borrowing or raising any moneys which my Trustee thinks expedient for any purposes in relation to the execution of the trusts of this will be mortgaging or charging with or without a power of sale all or any part of my residuary estate.

3.4	To pay or apply the income and any part or parts of the corpus of the share in my residuary estate to which any beneficiary is entitled or contingently or presumptively entitled under this will as my Trustee may from time to time think fit towards his or her maintenance education advancement benefit or support with power during the minority of the beneficiary to pay the same to the parent or guardian of the beneficiary without seeing to the application thereof.

IN WITNESS whereof I have hereunto set my hand this __Date of Will________.

SIGNED by the said __CLIENT’S NAME____	)
testatrix as and for her last will and 			)
testament in the presence of us both being 		)
present at the same time who at her request 		)
and in her presence and in the presence of 		)
each other have hereunto subscribed our 		)
names as attesting witnesses				)


Witness 1:…………………………		Witness 2: ……………………………..

Full Name:					Full name:

Occupation:					Occupation:

Address:					Address:

DATED ______DATE OF WILL___
















					
    _____________________________________

WILL OF ___CLIENT’S NAME___ ______________________________________










						CNC LEGAL
						SUITE 474, LEVEL 4,
						315 CASTLEREAGH STREET, 
						SYDNEY NSW 2000

						
						TEL:	02 8004 6383     
MOB:  0416 155 008
							 									
THIS IS THE LAS

T WILL AND TESTAMENT of

 

_____

Cl

i

ent

’

s name

____

 

of 

_____client

’

s 

add

ress

________

 

on 

____

Date of will

____

.

 

 

1. 

 

I REVOKE all wills and testamentary dis

positions previously made by me

 

in regards to my 

real and personal property in Australia

.

 

 

2. 

 

I

 

DIR

ECT that the following provisions shall have effect:

 

 

   

2.1 

 

I APPOINT

 

_____

na

me of execut

or

___________

 

of 

address of executor

 

as the 

sole

 

execut

or and trus

tee of this will

 

but 

if

 

____

name of executor

____

 

does not survive me 

then I 

appoint 

_____

name of al

ternative executor

_____________

 

of 

____address

 

of 

alternat

ive exec

utor_______

__

 

as

 

the sole

 

execut

or

 

and trustee

 

of this will and I 

DIRECT that the expression ‘my Trustee’ where hereinafter used shall, unless the 

context otherwise requires, include the exe

cut

or, executrix

 

or trustee for the time being 

of this will.

 

 

2.2 

 

I GIVE DEVISE AND BEQUEATH all my real and personal estate of whatsoever nature

 

in Australia

 

unto 

___

Bene

ficiary

_____

.

 

 

2.3

 

IN THE EVENT

 

that

 

__

Beneficiary

_________

 

does not survive me, I g

ive devise and 

bequeath my estate in Australia to the following persons in the following manner:

-

 

 

2.3.1

 

 

 

3

 

In the administration of my estate and the execution of the trusts o

f this will my

 

Executor,

 

Execut

r

ix

 

and Trustee shall in additio

n to any powers au

thorities and discretions conferred 

on 

him or 

her by law have the following powers discretions which 

he or 

s

he may exercise 

either alone or jointly with any other person or persons:

 

 

3.1

 

  

Notwithstanding that any investments may be of a spec

ulative nature or 

may not be 

income earning to invest my estate or any part or parts thereof in or upon:

 

 

3

.1.1    the purchase of land of any tenure in Australia or elsewhere;

 

 

THIS IS THE LAST WILL AND TESTAMENT of _____Client’s name____ of _____client’s 
address________ on ____Date of will____. 
 
1.  I REVOKE all wills and testamentary dispositions previously made by me in regards to my 
real and personal property in Australia. 
 
2.  I DIRECT that the following provisions shall have effect: 
 
   2.1  I APPOINT _____name of executor___________ of address of executor as the sole 
executor and trustee of this will but if ____name of executor____ does not survive me 
then I appoint _____name of alternative executor_____________ of ____address of 
alternative executor_________ as the sole executor and trustee of this will and I 
DIRECT that the expression ‘my Trustee’ where hereinafter used shall, unless the 
context otherwise requires, include the executor, executrix or trustee for the time being 
of this will. 
 
2.2  I GIVE DEVISE AND BEQUEATH all my real and personal estate of whatsoever nature 
in Australia unto ___Beneficiary_____. 
 
2.3 IN THE EVENT that __Beneficiary_________ does not survive me, I give devise and 
bequeath my estate in Australia to the following persons in the following manner:- 
 
2.3.1  
 
3 In the administration of my estate and the execution of the trusts of this will my Executor, 
Executrix and Trustee shall in addition to any powers authorities and discretions conferred 
on him or her by law have the following powers discretions which he or she may exercise 
either alone or jointly with any other person or persons: 
 
3.1   Notwithstanding that any investments may be of a speculative nature or may not be 
income earning to invest my estate or any part or parts thereof in or upon: 
 
3.1.1    the purchase of land of any tenure in Australia or elsewhere; 
 
', '', '2019-08-30 00:37:38.430677');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('e3696a68-fff6-4748-bef6-3c8eec8612e6', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'Simple Will (f) 2019.docx', '', '1. I revoke any previous Wills and other testamentary acts made by me and declare this to be my last Will.', '', '2019-08-30 00:37:38.481618');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('9626db99-c292-4228-adc3-cdd89e87c368', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'Simple Will (f) 2019.docx', '', '12. It is my express wish that my body be [cremated and my ashes scattered on a beach or headland].

Page 1 of 6


Page 2 of 6





_____________________________	_____________________________
Full signature of testatrix	Full signature of 1st witness
								_____________________________
	Full signature of 2nd witness
IN WITNESS of the above I have signed this Will in Sydney, Australia on


	SIGNED by the Testatrix as and for her last Will in the presence of us both present at the same time who at her request and in her sight and presence and in the sight and presence of each other have signed our names as witnesses:
	
	)
)
)
)
)
)
	





………………………………..................
[NAME]





………………………………………………..
Signature of 1st witness
Full name:
Address:



Occupation:






………………………………………………..
Signature of 2nd witness
Full name:
Address:



Occupation:


Page 

1

 

of 

2

 

 

 

 

 

 

Date:

 

 

 

 

 

 

LAST WILL & TESTAMENT

 

 

of 

 

 

[TESTATRIX]

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

11/210 Clarence Street Sydney NSW 2000

 

PO Box A275 Sydney South NSW 1235

 

phone. 02 9287 3500

  

fax. 02 9287 3599

 

Ref. 

 

Page 1 of 2 
 
 
 
 
 
Date: 
 
 
 
 
 
LAST WILL & TESTAMENT 
 
of  
 
[TESTATRIX] 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
 
11/210 Clarence Street Sydney NSW 2000 
PO Box A275 Sydney South NSW 1235 
phone. 02 9287 3500  fax. 02 9287 3599 
Ref.  
', '', '2019-08-30 00:37:38.541339');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('baf9f57d-2134-4338-b5bf-4c6777085083', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'Simple Will l DONE.doc', '', '14. In this Will income produced by a gift between my death and vesting of the gift accumulates to the gift.
', '', '2019-08-30 00:37:38.633588');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('7fcb32ad-a58f-439e-9886-67e60f9304b6', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'WIL6.pdf', '', '4. I APPOINT //4A//  of //4b//  as guardian of my minor children.* 
 

*//5// ', '', '2019-08-30 00:37:38.694045');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('ba89737f-b8e3-4c7b-95ff-890e88aa1389', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'Will_Female_Children_2016.doc', '', '9. I EMPOWER my Trustees in my Trustees’ absolute discretion to retain all or any part of my Estate in the same form or condition invested in the same manner as existed at my death and to vary and transpose the same from time to time as my Trustees shall think expeditious without being responsible for any loss occasioned thereby.
', '', '2019-08-30 00:37:38.72387');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('28880bd9-45a4-4607-8e32-05ff26cd6382', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'sample-one-liners.docx', '', '2. Clause 2', '', '2019-08-30 00:37:38.756852');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('09f76d90-0e04-4334-b62a-3a53ec1805fb', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'AAA MASTER WILL PRECEDENT.doc', '', '1. I REVOKE all former testamentary dispositions previously made by me and declare this to be my last Will and Testament.
', '', '2019-08-30 00:37:38.269663');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('92ac0fd3-68f8-43c8-bdb8-afc764054158', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'Anthony Hamer NSW - Will_adult_children_grandchildren.docx', '', '2.     		I APPOINT my relationships names (hereinafter referred to as "my Trustee" which expression shall where the context so admits include the trustees or trustee for the time being hereof whether original or substituted) to be executors executrix and trustees of this my Will AND I DECLARE that all trusts powers authorities and discretions hereinafter vested in my Trustee may be exercised by the survivor of them or any other trustee or trustees for the time being of this my Will.', '', '2019-08-30 00:37:38.324719');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('0d234fdf-2934-4ae9-a8b8-6629acd2f2d7', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'Draft will for Amelia.docx', '', '4. I APPOINT my husband KONSTANTIN AVILA as Executor and Trustee of this my Will and guardian of my children but in the event of my husband KONSTANTIN AVILA predeceases me or being unable or unwilling for any reason to act or continue to act in that capacity then to fill such vacancy I APPOINT my sisters ANNA MARIE T. TRANSFIGURACION and ABIGAIL T. ALCOS to be my joint-Executrix and joint-Trustees (hereinafter called “my Trustee”) of this my Will and joint-guardians of my children.
', '', '2019-08-30 00:37:38.37759');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('c29fef07-4d63-4ee5-b887-a5d67a8170ae', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'SIMPLE WILL WITH RESIDENCE TRUST.doc', '', '1. I REVOKE all previous wills and testamentary dispositions.', '', '2019-08-30 00:37:38.434528');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('57e00ae4-9e83-4f60-8c57-2c57b19b519d', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'Simple Will (f) 2019.docx', '', '3. In this Will, the word “children” includes a single child.', '', '2019-08-30 00:37:38.482792');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('f4e5a830-b22b-4d82-a6cd-b565150aaed4', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'Simple Will (m) 2019.docx', '', '11. My Trustees are to treat the age of [21] as the earliest date at which a beneficiary can attain a vested interest.', '', '2019-08-30 00:37:38.542107');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('fb57aa6a-49dc-404e-8a83-2333d34aaa30', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'WIL2.pdf', '', '2. No gift to any person takes effect unless that person survives me by 30 days.   
 ', '', '2019-08-30 00:37:38.635551');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('ef9e2e48-68cd-40b0-9f2a-5c31feff38a6', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'WIL6.pdf', '', '6. I GIVE //6A//  of //6b//  //6c//  ($//6d//) in lieu of commission.* 
 

*//7// ', '', '2019-08-30 00:37:38.695073');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('5b5a6afb-b778-4d31-9b81-0cc2e5850545', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'sample-1.doc', '', '14. Adjustments
The purchaser must provide copy of all certificates obtained from relevant authority to complete a statement of adjustment. A statement of adjustment must be provided to the vendor’s representative at least two business days before the date of settlement. If the statement of adjustment is not provided four business days prior to settlement, the purchaser will be at default and special condition 9 will apply.', '', '2019-08-30 00:37:38.725763');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('07ee001e-3f5b-4ca8-a753-6ab9fc010357', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'sample-one-liners.docx', '', '4. Clause 4
a. Line 1 for clause 4
b. Line 1 for clause 4
c. Line 1 for clause 4
d. Line 2 for clause 4
5. [bookmark: _GoBack]Clause 5


', '', '2019-08-30 00:37:38.759798');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('90ac2002-a4b9-4e87-832e-d9baecd245c1', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'AAA MASTER WILL PRECEDENT.doc', '', '4. I GIVE DEVISE BEQUEATH AND APPOINT the whole of all my real and personal estate of whatever nature and wherever situate to my said (relation) (NAME) absolutely but if my said (relation) (NAME) shall fail to survive me by a period of thirty (30) days clear THEN
………………………. 
     ……………………….    

 ……………………….





     Andrew N. Sochacki

  Stephanie Foreman
', '', '2019-08-30 00:37:38.269944');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('1054e962-470b-4f50-a3b1-327669ae27b4', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'AAA MASTER WILL PRECEDENT.doc', '', '12. I DIRECT that my Trustee/s in this my Will be entitled to make all the usual and proper charges for both (his/her/their) professional and other services in connection with the administration of this my Will and my estate and for (his/her/their) time and trouble that (he/she/they) would have been entitled to make if not Trustee/s or so employed. 

SIGNED by the said


)

(Testator/trix)



)

In our presence and attested 

)           ………………………………….






(INSERT NAME) 

by us in the presence of (him/her)
)

and each other



)

Witness ……………………………        
Witness……………………………….

Name: Andrew N. Sochacki


Name: Stephanie Foreman 
Address: 97-99 Stuart Street


Address: 97-99 Stuart Street

MULLUMBIMBY  NSW  2482


MULLUMBIMBY  NSW  2482
Occupation: Lawyer



Occupation: Personal Assistant

', '', '2019-08-30 00:37:38.324522');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('66386fb9-ee70-44ef-821c-8794e9b2d2de', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'Draft will for Amelia.docx', '', '2. I DECLARE THAT:

(a) “Death duties” means all duties probate death estate succession or otherwise in respect to my entire estate.

(b) “Designated age” means 21 years of age.

(c) “Entire estate” means all my real and personal property of whatsoever nature or kind and situated within Australia and includes all securities and deposits held under my name, including but not limited to the proceeds or value of any policy of life assurance or endowment insurance that I may own; the proceeds of any money held in any superannuation fund, approved deposit fund and the proceeds of any annuity issued by a life insurance company or a registered organisation; all shares or stock; all monies held in cash or in financial institutions under my name, any other real property or chattel owned by me, and any property over which I have a power of appointment or disposition.

(d) “My Trustee” includes my Trustee appointed hereunder and who may act in the trusts hereof whether original or substituted.

(e) “Survive” means survive for fourteen (14) days. Every benefit under this Will (or any codicil to it) is contingent upon the beneficiary surviving me by fourteen (14) days and if not then the beneficiary is deemed to have predeceased me and fails to attain any vested interest therein.

(f) “Testamentary liabilities” means my just debts funeral, testamentary expenses and any administrative costs incurred during the execution of this Will (including death duties not otherwise payable and all payments under any trustee charging clause).
', '', '2019-08-30 00:37:38.37745');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('3a99eb55-6e91-4083-98f9-a74c82e32605', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'SIMPLE WILL WITH RESIDENCE TRUST.doc', '', '2. I APPOINT my solicitor MURRAY JOHN FAHEY of Level 1, 2 Barrack Street, Sydney in the aforesaid State as my Executor and Trustee. ', '', '2019-08-30 00:37:38.435155');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('fbd5f142-080b-4a5e-a33a-4144f60c1ce6', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'Simple Will (f) 2019.docx', '', '2. This Will applies to all my property wherever situated.', '', '2019-08-30 00:37:38.482429');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('d7af686b-01a3-4f33-9810-0d32f7018e59', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'Simple Will (m) 2019.docx', '', '3. In this Will, the word “children” includes a single child and any child born after the date of my death.', '', '2019-08-30 00:37:38.54159');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('23aeeb36-da2b-4818-b456-07a3834026ea', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'Simple Will l DONE.doc', '', '15. It is my wish that my body is disposed of  BY CREMATION/ BURIED OR as my Executor decides.
* THE REMAINDER OF THIS PAGE HAS BEEN INTENTIONALLY LEFT BLANK *

SIGNED by the Testator in the presence of us both being present at the same time and attested by us in the presence of her and of each other.






……………………………………………………………….








NAME
	Signature of Witness

Print name of Witness in full

Address of Witness

Occupation of Witness
	Signature of Witness

Print name of Witness in full

Address of Witness

Occupation of Witness


	
	DATED                                                                      2019
                                                                 WILL

                                                                   of

                                                       TESTATOR NAME



Willmaker:   _______________
 Witness: __________________  Witness: _______________

[image: image1.jpg]

', '', '2019-08-30 00:37:38.634597');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('672a6b05-f20f-4981-aa04-fe6ec2df6108', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'WIL6.pdf', '', '5. I GIVE //5A//  of //5b//  //5c//  ($//5d//).* 
 

*//6// ', '', '2019-08-30 00:37:38.694376');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('f2b8c550-afe3-455b-8ae8-c8dc627263bb', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'sample-1.doc', '', '13. Purchaser acknowledgements
The purchaser acknowledges that they are purchasing the property as a result of their own enquiries and inspection and not relying upon any representation made by the vendor or any other person on the vendor’s behalf:
(a)	In its present condition and state of repair;
(b)	Subject to all defects latent and patent;
(c)	Subject to any infestations and dilapidation;
(d)	Subject to all existing water, sewerage, drainage and plumbing services and connections in respect of the property; and
(e)	Subject to any non-compliance, that is disclosed herein, with the Local Government Act or any Ordinance under that Act in respect of any building on the land.
The purchaser agrees not to seek to terminate rescind or make any objection requisition or claim for compensation arising out of any of the matters covered by this clause.', '', '2019-08-30 00:37:38.724596');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('018b1ab2-8d63-460a-bcb5-d0f93726bca5', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'sample-one-liners.docx', '', '3. Clause 3', '', '2019-08-30 00:37:38.757738');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('765ac187-7449-4a46-876a-a4e5a9ec12f2', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'AAA MASTER WILL PRECEDENT.doc', '', '5. I GIVE AND DEVISE my property situate at (location) in the State of (state) to my (relation) (NAME) absolutely (subject to any mortgage debt existing at the date of my death) together with all furniture furnishing and items of domestic use ornament and convenience in and about the said home free from death and estate duties, if any, and free from legal costs and disbursements.', '', '2019-08-30 00:37:38.270192');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('76f3968e-e72a-4a54-86b9-db0056025973', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'AAA MASTER WILL PRECEDENT.doc', '', '11. I APPOINT my (relation) (NAME) to be the testamentary guardian of my infant child(ren) (NAMES).     If my said (relation) (NAME) shall fail to survive me by a period of thirty (30) days clear THEN I APPOINT my (relation) (NAME) to be the testamentary guardian of my infant child(ren). ', '', '2019-08-30 00:37:38.324191');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('7558cf49-0f89-4d8e-9482-127361d8f23b', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'Draft will for Amelia.docx', '', '3. I DECLARE that my step-son MACARIO AKANDO AVILA and any other step-children I may have shall have no beneficial interest under this Will.
', '', '2019-08-30 00:37:38.377458');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('5d89a3ff-bcba-4843-980a-83b3fbe87e5d', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'Precedent Will - Male Testator.docx', '', '3.1   Notwithstanding that any investments may be of a speculative nature or may not be income earning to invest my estate or any part or parts thereof in or upon:

3.1.1    the purchase of land of any tenure in Australia or elsewhere;

3.1.2	the shares stock debentures or other interests in or of any company incorporated in Australia or elsewhere and to pay calls on shares and to subscribe to new issues;

3.1.3	deposit with or without interest with any company incorporated in Australia or elsewhere and in particular with any bank;

3.1.4	units or sub units of any fixed or flexible unit trust in Australia or elsewhere or any of the States or Territories of Australia which is 
established or managed by any company and of which a trustee company under the Trustee Companies Act 1984, or an insurance company is the trustee;

3.1.5	any of the modes of investment for the time being authorised or permitted by the respective laws of Australia or elsewhere or any of the 
States or Territories of Australia for the investment of trust moneys;

3.2 So long as any real property or interest in real property forms part of my estate to manage use and lease or let the same or any part or parts thereof to erect pull down rebuild and repair buildings and improvements thereon to carry out improvements of any nature to make allowances to and arrangements with tenants to acquire easements or other rights and generally to deal with such property or interest or join in dealing with the same as if beneficially entitled thereto, without being responsible for loss.

3.3	To borrow or raise or concur in borrowing or raising any moneys which my Trustee thinks expedient for any purposes in relation to the execution of the trusts of this will be mortgaging or charging with or without a power of sale all or any part of my residuary estate.

3.4	To pay or apply the income and any part or parts of the corpus of the share in my residuary estate to which any beneficiary is entitled or contingently or presumptively entitled under this will as my Trustee may from time to time think fit towards his or her maintenance education advancement benefit or support with power during the minority of the beneficiary to pay the same to the parent or guardian of the beneficiary without seeing to the application thereof.

IN WITNESS whereof I have hereunto set my hand this __Date of Will________.

SIGNED by the said __CLIENT’S NAME____	)
testator as and for his last will and 			)
testament in the presence of us both being 		)
present at the same time who at his request 		)
and in his presence and in the presence of 		)
each other have hereunto subscribed our 		)
names as attesting witnesses				)


Witness 1:…………………………		Witness 2: ……………………………..

Full Name:					Full name:

Occupation:					Occupation:

Address:					Address:

DATED ______DATE OF WILL___
















					
    _____________________________________

WILL OF ___CLIENT’S NAME___ ______________________________________










						CNC LEGAL
						SUITE 474, LEVEL 4,
						315 CASTLEREAGH STREET, 
						SYDNEY NSW 2000

						
						TEL:	02 8004 6383     
MOB:  0416 155 008
							 									
THIS IS THE LAS

T WILL AND TESTAMENT of

 

_____

Cl

i

ent

’

s name

____

 

of 

_____client

’

s 

add

ress

________

 

on 

____

Date of will

____

.

 

 

1. 

 

I REVOKE all wills and testamentary dis

positions previously made by me

 

in regards to my 

real and personal property in Australia

.

 

 

2. 

 

I

 

DIR

ECT that the following provisions shall have effect:

 

 

   

2.1 

 

I APPOINT

 

_____

na

me of execut

or

___________

 

of 

address of executor

 

as the 

sole

 

execut

or and trus

tee of this will

 

but 

if

 

____

name of executor

____

 

does not survive me 

then I 

appoint 

_____

name of al

ternative executor

_____________

 

of 

____address

 

of 

alternat

ive exec

utor_______

__

 

as

 

the sole

 

execut

or

 

and trustee

 

of this will and I 

DIRECT that the expression ‘my Trustee’ where hereinafter used shall, unless the 

context otherwise requires, include the exe

cut

or, executrix

 

or trustee for the time being 

of this will.

 

 

2.2 

 

I GIVE DEVISE AND BEQUEATH all my real and personal estate of whatsoever nature

 

in Australia

 

unto 

___

Bene

ficiary

_____

.

 

 

2.3

 

IN THE EVENT

 

that

 

__

Beneficiary

_________

 

does not survive me, I g

ive devise and 

bequeath my estate in Australia to the following persons in the following manner:

-

 

 

2.3.1

 

 

 

3

 

In the administration of my estate and the execution of the trusts o

f this will my

 

Executor,

 

Execut

r

ix

 

and Trustee shall in additio

n to any powers au

thorities and discretions conferred 

on 

him or 

her by law have the following powers discretions which 

he or 

s

he may exercise 

either alone or jointly with any other person or persons:

 

 

3.1

 

  

Notwithstanding that any investments may be of a spec

ulative nature or 

may not be 

income earning to invest my estate or any part or parts thereof in or upon:

 

 

3

.1.1    the purchase of land of any tenure in Australia or elsewhere;

 

 

THIS IS THE LAST WILL AND TESTAMENT of _____Client’s name____ of _____client’s 
address________ on ____Date of will____. 
 
1.  I REVOKE all wills and testamentary dispositions previously made by me in regards to my 
real and personal property in Australia. 
 
2.  I DIRECT that the following provisions shall have effect: 
 
   2.1  I APPOINT _____name of executor___________ of address of executor as the sole 
executor and trustee of this will but if ____name of executor____ does not survive me 
then I appoint _____name of alternative executor_____________ of ____address of 
alternative executor_________ as the sole executor and trustee of this will and I 
DIRECT that the expression ‘my Trustee’ where hereinafter used shall, unless the 
context otherwise requires, include the executor, executrix or trustee for the time being 
of this will. 
 
2.2  I GIVE DEVISE AND BEQUEATH all my real and personal estate of whatsoever nature 
in Australia unto ___Beneficiary_____. 
 
2.3 IN THE EVENT that __Beneficiary_________ does not survive me, I give devise and 
bequeath my estate in Australia to the following persons in the following manner:- 
 
2.3.1  
 
3 In the administration of my estate and the execution of the trusts of this will my Executor, 
Executrix and Trustee shall in addition to any powers authorities and discretions conferred 
on him or her by law have the following powers discretions which he or she may exercise 
either alone or jointly with any other person or persons: 
 
3.1   Notwithstanding that any investments may be of a speculative nature or may not be 
income earning to invest my estate or any part or parts thereof in or upon: 
 
3.1.1    the purchase of land of any tenure in Australia or elsewhere; 
 
', '', '2019-08-30 00:37:38.433656');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('aa2dade2-f770-4883-a87b-f5bc709f3788', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'Simple Will (f) 2019.docx', '', '11. My Trustees are to treat the age of [21] as the earliest date at which a beneficiary can attain a vested interest.', '', '2019-08-30 00:37:38.507383');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('7d499070-c042-4da9-8f5b-7825fb6c2153', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'Simple Will l DONE.doc', '', '13. In this Will, any gift which depends on the beneficiary surviving me by a specified period or attaining a specified age is contingent and does not vest in the beneficiary unless and until he or she has survived the specified period or attained the specified age.
', '', '2019-08-30 00:37:38.584916');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('85b3729f-4472-43d4-b178-4500e06618ed', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'WIL5.pdf', '', '8. I GIVE *//12// the whole *//13// the rest and residue* of my estate to my Trustee: 
 

(a) to pay all debts, *//12// legacies,* funeral and testamentary expenses and any 
death, estate or succession duties; and 

 
*//14//  

(b) to hold the balance remaining on the following trusts: 
 

(i) equally for such of my children who are living at my death and reach 
the age of 18 years provided that if any of my children fail to attain a 
vested interest leaving children living at my death, then equally for 
those children on reaching the age of 18 years as to the share which 
their parent would otherwise have taken; and 

 
(ii) if none of my children or grandchildren attains a vested interest then 

for //14A// .* 
 



-2- 
 

 
 
 
 

  .....................................................................  
*//17// Testator *//18// Testatrix * 

 
 
 

..................................................................... 
Witness 

 .....................................................................  
Witness 

 

*//15//  
(iii) to hold the balance remaining on the following trusts:  

 
(A) for such of my children who are living at my death and reach 

the age of 18 years and if more than one in equal shares and I 
expressly negate the provisions of Section 41 of the Succession 
Act 2006 (NSW); and 

 
(B) if none of my children attains a vested interest then for //15A// 

.* 
 ', '', '2019-08-30 00:37:38.666961');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('633e6abb-a0f7-46a6-bd0d-e72233b31c5f', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'Will_Female_Children_2016.doc', '', '8. I DECLARE that notwithstanding any trust for sale hereinbefore contained my Trustees may appropriate any real or personal property forming part of my Estate to or towards the share of any person or persons in the proceeds of the sale hereof under the trusts hereinbefore contained and for the purposes aforesaid may fix the value of such real or personal property so appropriated as my Trustees shall think fit and every such appropriation and valuation shall be binding upon all persons interested under this my Will.
', '', '2019-08-30 00:37:38.709294');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('db0aa35f-10b6-47fe-bc4b-4917c283a426', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'sample-one-liners.docx', '', '1. Clause 1', '', '2019-08-30 00:37:38.739286');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('b2eabc75-edcd-4761-8732-c91390f42910', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'AAA MASTER WILL PRECEDENT.doc', '', '3. I appoint my (relation) (NAME) and my (relation) (NAME) to be Executor/Executrix and Trustee of this my Will and hereinafter referred to as “my Trustee” which term shall include the survivor of them.
', '', '2019-08-30 00:37:38.27051');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('e32099ab-dce9-47d6-b8bf-fd144f4eb898', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'Anthony Hamer NSW - Will_adult_children_grandchildren.docx', '', '3.		I DIRECT that my Trustee shall pay all of my debts funeral and testamentary expenses including all duties and taxes payable as a consequence of my death as soon as conveniently may be after my death.', '', '2019-08-30 00:37:38.325098');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('08a76e08-9a67-4a8c-bfaf-77f18555798a', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'Draft will for Amelia.docx', '', '6. IN THE EVENT that there is a remainder of my estate, I GIVE DEVISE AND BEQUEATH that remainder of my estate to any of my surviving sisters ANNA MARIE T. TRANSFIGURACION and ABIGAIL T. ALCOS and if more than one, as tenants in common in equal shares.
', '', '2019-08-30 00:37:38.378485');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('332c3ec9-d316-4584-9367-da41e37b50ea', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'SIMPLE WILL WITH RESIDENCE TRUST.doc', '', '3. If MURRAY JOHN FAHEY is unable or unwilling to act (or to continue to act) as my Executor and Trustee I APPOINT such of MY SUBSTITUTE and my relationship SUBSTITUTE as are willing and able to act, as my Executors and Trustees.', '', '2019-08-30 00:37:38.435681');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('ace2adca-7830-42e3-be03-e25678fb2776', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'Simple Will (f) 2019.docx', '', '4. In this Will, the word “grandchildren” includes a single grandchild and any grandchild born after the date of my death.', '', '2019-08-30 00:37:38.483434');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('1654b649-d507-4b1c-92a9-aebd5e9f38d6', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'Simple Will l DONE.doc', '', '5. I GIVE my GIFT to the CHARITY NAME (CHARITY ABN). The receipt of an authorised officer of the CHARITY NAME shall be an absolute discharge to my executors. In the event this gift fails it shall form part of my Residual Estate.', '', '2019-08-30 00:37:38.542613');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('275ff4a2-067b-481b-9991-697ee41da576', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'WIL2.pdf', '', '3. IF my wife //2//  survives me for 30 days then: 
 

(a) I GIVE her all of my estate; and 
 

(b) I APPOINT her sole Executrix but if she is unwilling or unable to act I 
appoint //3//  of //3a//  as *//4// executor *//5// executrix*. 

 ', '', '2019-08-30 00:37:38.636322');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('bf40750f-9cf4-4130-9972-6e144c317dbb', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'WIL7.pdf', '', '4. I GIVE //8A//  of //8b//  //8c//  ($//8d//).* 
 

*//9// ', '', '2019-08-30 00:37:38.695617');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('3f18b71f-0e9c-4bc7-81a7-6f9732f652a9', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'sample-1.doc', '', '15. Consequences of Default
a. The purchaser agrees that if they are in default on the Contract, then an interest rate is payable at 14% (this provision will override the general condition 26) per annum payable by the purchaser to the vendor at settlement;
b. The purchaser agrees that if they are in default of the Contract, a default management fee $220.00 including GST is payable to the vendor’s legal representative; 
c. If a default notice is served on the purchaser by the vendor, the purchaser acknowledges they will pay the legal fees $880.00 including GST to the vendor’s legal representative ;
d. The purchaser acknowledges that they will pay re-booking fee of $110.00 including GST if it is physical settlement, $88.00 if it is electronic settlement by way of an adjustment to the Vendor legal representative for every subsequent settlement booking is made, after the initial booking has been made;
e. Should the settlement is to be rescheduled after all parties have attended (at physical settlement) at settlement, the purchaser further acknowledges to pay $220.00 for each rescheduled settlement fees, should the fault be of their own, bank or their representative.
', '', '2019-08-30 00:37:38.726633');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('444c9f47-ef40-4764-b851-59de7042e0ed', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'AAA MASTER WILL PRECEDENT.doc', '', '7. I GIVE DEVISE AND BEQUEATH AND APPOINT (all my/the rest and residue of my) estate of whatever nature and wherever situate to my (Trustee/s) UPON TRUST to sell and convert into money the same or such part  thereof which shall not consist of money and with power to postpone the sale and conversion of the same or any part or parts thereof for so long as (he/she/they) shall think fit and out of the proceeds of the sale and conversion and any ready money to pay the funeral debts and testamentary expenses and all death and estate duties, if any, payable in respect of my estate and stand possessed of the said monies and of such part or parts of my estate as shall for the 
………………………. 
     ……………………….    

 ……………………….





     Andrew N. Sochacki

  Stephanie Foreman

time being remain unsold or unconverted UPON TRUST  for such of my children (NAMES)  as shall survive me and attain the age of twenty one (21) years as (joint tenants/ tenants in common) .', '', '2019-08-30 00:37:38.271154');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('3a797fc2-70c7-42f9-9c1b-fc9e018f6bcd', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'Anthony Hamer NSW - Will_adult_children_grandchildren.docx', '', '6.		I DIRECT that where capital gains tax is assessed against my Trustee either consequent upon my death or upon the sale of any asset of my estate by my Trustee such tax shall be a charge firstly upon the asset giving rise to the tax or upon the net proceeds of sale thereof (as the case may be) and secondly upon my estate.


IN WITNESS whereof I have hereunto set my hand to this my last Will and Testament this            day of            		     2018.


	SIGNED by the Testat as h last Will and Testament in the presence of us both present at the same time who at h request and in h presence and in the presence of each other have hereunto subscribed our names as witnesses:
	)
)
)
)
)
)
)
)
	



………………………………
Testat


	
	
	

	
	
	

	……………………………………
	
	……………………………………

	Witness Signature
	
	Witness Signature

	
	
	

	……………………………………
	
	……………………………………

	Witness Name
	
	Witness Name

	
	
	

	……………………………………
	
	……………………………………

	Witness Address
	
	Witness Address





4

3





DATED 	day of			2018












LAST WILL AND TESTAMENT






of



[                              ]
















		ANTHONY HAMER & ASSOCIATES
		Lawyers
		6/2 St. Johns Avenue
		PO Box 29
		GORDON.  2072
		Ph:   9498-8021
		Fax:  9498-5551



', '', '2019-08-30 00:37:38.326463');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('053a41ee-7708-49d3-9779-038feb7752a5', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'Draft will for Amelia.docx', '', '7. My Trustee the following powers:-

(a) To sell call in and convert into money such part or parts thereof as may not consist of money.

(b) To postpone without being responsible for loss the sale calling in and conversion of the whole or any part of my estate and property for such period as my Trustee in my Trustee’s absolute discretion may think fit and notwithstanding that it may be of a wasting speculative or hazardous nature.

(c) To invest such of the proceeds of the conversion of my trust estate and any ready moneys as may from time to time be available for investment (including unapplied income) in any of the modes of investment for the time being authorised by the law of the Commonwealth and any State of Australia for the investment of trust funds and in debenture or debenture stock unsecured notes or deposits guaranteed performance ordinary or deferred shares with or without preferential dividend rights or guaranteed preference ordinary or deferred stock issued or guaranteed by any company incorporated under Royal Charter or by any special Act or under any general Act or Acts of the Commonwealth or any State or Territory of Australia and whether bearing any liability for uncalled capital or not to vary or transpose such investments into or for others of a nature hereby authorised.

(d) To apply the whole or any part of the capital or income of the vested expectant or contingent interest of any person or persons taking under this my Will while such person shall be under the designated age as my Trustee in my Trustee’s absolute discretion shall think fit to or for the maintenance education advancement preferment or benefit of such person (including travel to broaden the mind).
', '', '2019-08-30 00:37:38.379401');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('20b9f49d-cfb4-4b18-b6cc-32edf17606e5', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'SIMPLE WILL WITH RESIDENCE TRUST.doc', '', '5. I GIVE all of my real and personal property to my Trustee to pay all debts, legacies, funeral and testamentary expenses and any death, estate or succession duties for which my Estate is liable and TO HOLD the residue then remaining on the following further terms.
', '', '2019-08-30 00:37:38.437106');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('15366410-af01-4b9c-9ff9-01fac16905de', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'Simple Will (f) 2019.docx', '', '7. I direct my Trustees the whole of my real and personal property of whatever kind and nature and wherever situate (hereinafter referred to as “my Estate”) and direct them as follows:
a. To pay or provide for payment of all my just debts, mortgages, unpaid taxes, funeral and testamentary expenses, including any taxes or duties payable on property passing under this Will, out of my existing money and the money arising from the sale and conversion of my Estate.
b. To give to my [relationship] [NAME] of [address] my [describe the item].
c. To give to my [son / daughter] [NAME] and any other of my children in equal shares as tenants in common an amount of [words] dollars ($X).
d. To give to [NAME OF INSTITUTION OR CHARITY] of [address] the sum of [amount dollars ($X)] in aid of that institution and for its general purposes, and I declare that the receipt of the Treasurer or other authorised Officer shall be a full discharge for my Trustees for the bequest.
e. To give to [NAME OF CHARITY] of [address] the sum of [amount dollars ($X)] for its general purposes and I declare that the receipt of the Secretary or other proper Officer for the time being of [NAME] shall be a full discharge for my Trustees for the bequest.
f. If, at the time of my death, any of the institutions or charities named in the above clauses [8e or 8f] have ceased to exist, have amalgamated with another institution or charity or have changed their name, the gift shall not fail but my Trustees shall vest that gift in the institution or charitable organisation which in the Trustees’ absolute discretion is considered to most nearly fulfil the objects that I intend to benefit.
g. To hold the residue thereof upon trust for my [husband / brother / sister / father/ mother] [NAME] but if he/she has predeceased me or dies within 30 days of the date of my death or fails to attain a vested interest in my Estate, then to my children in equal shares as tenants in common. 
h. If any of my children predecease me or fail to attain a vested interest in my Estate, then my Trustees are to hold the share which my deceased child would otherwise have received on my death for the children of my deceased child as are living at the date of my death, and if more than one in equal shares as tenants in common. ', '', '2019-08-30 00:37:38.48438');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('e11bae32-18ae-4fb4-b31d-aebff9b89c51', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'Simple Will l DONE.doc', '', '9. My Executor may invest or re-invest any funds in:

(a) any investment authorised by law; 

(b) any investment in which any part of my estate is invested at my death; 

(c) all or any part of any form of real estate of any tenure (including a lot within the meaning of any Strata Titles or Community Titles legislation) whether or not productive of income;

(d) shares in a company in which all the issued shares are owned by persons each of whom, because of that share ownership, has an exclusive right to occupy a part of a building on the land; 

(e) any mortgages including contributory mortgages; and

(f) shares, debentures, stocks, notes or similar securities in any public company listed or intended to be listed on an Australian Stock Exchange.
', '', '2019-08-30 00:37:38.544921');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('9a790138-caf0-4969-9edb-375d297be617', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'WIL5.pdf', '', '5. I GIVE //9A//  of //9b//  //9c//  ($//9d//).* 
 

*//10// ', '', '2019-08-30 00:37:38.638015');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('29486d79-5a22-4fca-b208-1bd62bf0460d', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'WIL8.pdf', '', '4. I GIVE //4A//  of //4b//  //4c//  ($//4d//).* 
 

*//5// ', '', '2019-08-30 00:37:38.696982');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('8f45294e-283a-4306-b8a9-4d9d228b5e34', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'sample-1.doc', '', '19. Re-booking fees in Electronic settlement
 In case of electronic conveyancing, the purchaser agrees to pay a re-booking fee of $88.00 including GST by way of an adjustment to the Vendor Conveyancer for every subsequent settlement booking is made, after the initial booking has been made and the settlement does not occur on agreed date. In addition, special condition 9 will apply. ', '', '2019-08-30 00:37:38.729191');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('ffa57d74-fa54-46ea-8599-59b293871e6b', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'AAA MASTER WILL PRECEDENT.doc', '', '9. BUT if none of my children or children’s children survive me and attain the age of twenty one (21) years THEN UPON TRUST for (NAME)', '', '2019-08-30 00:37:38.271175');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('3ddbe023-8eb9-49e2-8c52-7cdc4b6ed417', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'Anthony Hamer NSW - Will_adult_children_grandchildren.docx', '', '4.        		I GIVE the whole of my estate both real and personal of whatsoever nature and kind and wheresoever situate of or to which I may die possessed or entitled or over which I may have any power of disposition as at the date of my death to such of my relationship the said names as shall survive me and if more than one in equal shares PROVIDED HOWEVER should either/any of my said relationship predecease me leaving issue living at the date of my death then such issue who survive me and attain the age of twenty five (25) years shall take and if more than one equally between them such share in my estate as his her or their parent would have taken had such parent survived me and attained a vested interest.', '', '2019-08-30 00:37:38.3257');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('e64b63c0-f2c6-483b-b123-b2e33162d236', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'Draft will for Amelia.docx', '', '5. SUBJECT to the payment of my death duties and testamentary liabilities I GIVE DEVISE AND BEQUEATH my entire estate situated in Australia to my Trustee UPON TRUST and my Trustee is to divide my entire estate into ten (10) shares and my Trustee shall invest my entire estate and draw from proceeds, after payment of any reasonable administrative costs to my Trustee, to pay for reasonable living expenses, education fees, leisure activities and further investments for the beneficiaries in their respective shares set out as follows:

(a) As to one (1) share thereof to my husband KONSTANTIN AVILA if he survives me. IF my husband KONSTANTIN AVILA predeceases me then I GIVE DEVISE AND BEQUEATH his share to the other surviving beneficiaries under subclause (b) and if more than one as tenants in common in equal shares.

(b) As to nine (9) share thereof to all of my natural born children as surviving me and if more than one as tenants in common in equal shares subject to the following clauses:

(i) IF any one of the said beneficiaries under subclause (b) predeceases me and leave a child or children surviving me, then that surviving child or children shall on attaining the designated age take equally the share which their parents would otherwise have taken.

(ii) IF any one of the said beneficiaries under subclause (b) predeceases me and leaving no issue then I GIVE DEVISE AND BEQUEATH that predeceased beneficiary’s share of my estate to the other surviving beneficiaries under subclause (b) and if more than one as tenants in common in equal shares.

UNTIL the date upon which all my surviving natural born children reach the Designated Age, then my Trustee is to distribute my entire estate to the beneficiaries in their respective shares in a manner as set out under this Clause.
', '', '2019-08-30 00:37:38.377799');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('c46638bd-a127-4318-a879-4d78e2648c2b', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'SIMPLE WILL WITH RESIDENCE TRUST.doc', '', '4. In this Will: 
a) The expression my Executor means my Executors and Trustees as previously appointed while acting and my personal representatives and Executor for the time being;  

b) My Executor in addition to accepting any gift given to them in this Will may apply to the Court for commission for their pains and trouble in carrying out their duties as my Executor; 

c) Gifts to a person who is named as my Executor is not dependent on that person acting as Executor; and
d) I authorise any Executor (whether original or substitute) of mine being a person engaged in any profession or business, to be entitled to charge and be paid from my estate all usual professional and business charges for business transacted, time expended and acts done by them, in connection with the powers, provisions and requirements of acting as my Executor. ', '', '2019-08-30 00:37:38.436053');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('b26df7fc-35d1-4e23-9ba4-0208e7dd193d', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'Simple Will (f) 2019.docx', '', '6. If [Name of husband] does not survive me:
a. I appoint [NAME] and [NAME] of [address] to be the joint guardians of my children during their minority provided that the said guardians are able fully and independently to take care of my children;
b. If one of the said guardians in clause 6a above does not survive me, or shall be unable or unwilling to act or continue to act as guardian, the other shall be the sole guardian of my minor children; 
c. In the event that both of the said guardians in above clause 5a do not survive me, or shall be unable or unwilling to act, I appoint Name to be the substituted guardian of my minor children.', '', '2019-08-30 00:37:38.483735');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('f13f846d-454e-4dcc-b658-e57348ab5884', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'Simple Will l DONE.doc', '', '7. I GIVE my Residual Estate to MY PARTNER NAME OR  such of my daughters/sons  NAMES who survive me and if more than one as tenants in common in equal shares PROVIDED THAT if either of my PARTNER/SONS/DAUGHTERS do not survive to become a beneficiary of my estate but leave children who survive them (“the survivors”) than I DIRECT my Executor divide the share that would have been given into one or more parts and I GIVE each of the survivors one equal part.', '', '2019-08-30 00:37:38.543406');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('44deac65-3172-4722-8f8f-fce3c7e83b3d', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'WIL5.pdf', '', '3. I APPOINT //2//  of //2a//  as *//3// executor *//4// executrix* and trustee (my 

Trustee) and if that appointment fails I APPOINT //5//  of //5a//  as *//6// executor 
*//7// executrix* and trustee.  The expression my Trustee means the original trustee, 
the surviving trustee or a new or additional trustee. 

 
*//8// 
', '', '2019-08-30 00:37:38.636543');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('77c02c7b-67f6-41d4-8222-25422f07a981', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'WIL6.pdf', '', '7. I GIVE //7A//  of //7b//  //7c//  ($//7d//) in addition to any commission and 

professional and other fees //7e//  is entitled to be paid.* 
 ', '', '2019-08-30 00:37:38.695325');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('7bf9d4f0-7765-449e-9f52-5084d6637fff', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'sample-1.doc', '', '16. Finance Clause
General Condition 14.2(c) does not apply in this contract. The purchaser must inform in writing to the vendor’s legal representative as to whether the finance has been approved or not. Where a purchaser’s finance has not been approved, the purchaser may end the contract by sending a written notice and the purchaser must provide a letter from an Authorised Banking Institution stating finance has not been approved. 
Should the purchaser fails to notify the vendor’s legal representative as required, or if no further extension is sought by the purchaser then the contract will be unconditional. If the purchaser does not want to proceed with the purchase, all deposits must be forfeited.', '', '2019-08-30 00:37:38.727257');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('5689ff83-f1f6-4500-be81-7901da01ea86', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'AAA MASTER WILL PRECEDENT.doc', '', '2. I APPOINT my (relation) (NAME) to be the sole (Executor/Executrix) and Trustee of this my Will BUT if my said (relation) (NAME) shall fail to survive me by a period of thirty (30) days clear or be unable or unwilling then I APPOINT my (relation) (NAME) to be Executor/Executrix and Trustee of this my Will and hereinafter referred to as “my Trustee” which term shall include the survivor of them.
', '', '2019-08-30 00:37:38.271594');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('1e98c2ff-a99c-44ed-91e2-e0143c5d6e1f', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'Anthony Hamer NSW - Will_adult_children_grandchildren_final.docx', '', '4. I GIVE the whole of my estate both real and personal of whatsoever nature and kind and wheresoever situate of or to which I may die possessed or entitled or over which I may have any power of disposition as at the date of my death to such of my  the said  as shall survive me and if more than one in equal shares PROVIDED HOWEVER should  of my said  predecease me leaving issue living at the date of my death then such issue who survive me and attain the age of twenty five (25) years shall take and if more than one equally between them such share in my estate as his her or their parent would have taken had such parent survived me and attained a vested interest.', '', '2019-08-30 00:37:38.32745');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('80b60cd4-4357-4495-90e0-ab26ad0de84a', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'Precedent Will - Female Testatrix.docx', '', '1.  I REVOKE all wills and testamentary dispositions previously made by me in regards to my real and personal property in Australia.
', '', '2019-08-30 00:37:38.380738');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('6bc0775a-c002-457c-bfd9-a36e834396d9', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'SIMPLE WILL WITH RESIDENCE TRUST.doc', '', '7. I GIVE to my daughter NAME all my jewelleryGIFT. If NAME does not survive me and this gift fails, I GIVE all my jewellery to my granddaughter OTHER PERSON NAME (“SHORT NAME”)', '', '2019-08-30 00:37:38.43849');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('3f65492b-aafe-4150-be76-9faa0c9fd98e', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'Simple Will (f) 2019.docx', '', '10. It is my profound wish and intention that any current or former spouse or de-facto spouse of a child of mine does not receive any part of my Estate directly or indirectly. In the event that any such person makes a successful claim on any part of my Estate either before or after it has passed to a child of mine, I direct that to the extent permitted by law my said child’s entitlement to my Estate automatically bypass or leave my said child and be held in trust for my grandchildren in equal shares as tenants in common.
Or
In the event of divorce [This is because a final financial settlement was reached between us when we separated in YEAR. I consider that he has been adequately provided for financially and after very careful deliberation I do not propose to make any further financial provision for him.]
Or
[bookmark: _GoBack]After careful consideration by me of all circumstances and persons, including my siblings, wider family and former partners, including my former partner [NAME] of [address] and all other people known to me, it is my express wish and intention not to make a bequest to anyone other than as specified in this Will. I make this decision consciously because I do not share in the lives of anyone other than the beneficiaries specified in this Will and because there are no people other than the beneficiaries of this Will who are wholly or partially financially or otherwise dependent on me.', '', '2019-08-30 00:37:38.486914');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('3c50bdcc-f770-44f4-b896-2cc8634b0427', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'Simple Will l DONE.doc', '', '12. Where any beneficial disposition of property is made to a person who does not survive me for a period of 30 days the disposition is treated as if that person had died before me.
', '', '2019-08-30 00:37:38.546879');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('d5f9b075-1040-4284-abfd-f488d72afee6', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'WIL5.pdf', '', '7. I GIVE //11A//  of //11b//  //11c//  ($//11d//) in addition to any commission and 

professional and other fees //11e//  is entitled to be paid.* 
 ', '', '2019-08-30 00:37:38.641872');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('752309af-e866-4682-96a7-92a37d765f76', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'Will_Female_Children_2016.doc', '', '6. IN ADDITION to the income hereinbefore mentioned in Clause 5 hereof I EMPOWER my Trustees in their absolute and unfettered discretion to pay and apply the whole or part or parts of the capital of my Estate in or towards the benefit maintenance education and advancement in life of any infant beneficiaries hereinbefore mentioned.
', '', '2019-08-30 00:37:38.697621');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('7533ff97-dbdd-49c5-836b-8acad5da0960', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'sample-1.doc', '', '18. Changing to Physical settlement from Electronic settlement 
If the physical settlement is requested by the purchaser/s where Electronic conveyancing is conditioned under special condition 1 then the purchaser is in default and agrees to pay $330 to the vendor’s legal representative.', '', '2019-08-30 00:37:38.728925');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('79d31c01-b67c-46e1-a65d-274e792903d8', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'AAA MASTER WILL PRECEDENT.doc', '', '8. PROVIDED ALWAYS AND I DECLARE that if any or all of my said children shall predecease me leaving a child or children who shall survive me and attain the age of twenty one (21) years THEN in each such case the last-mentioned child or children shall take (and equally between them if more than one) the share which (his/her/their) parent would have taken in my estate by surviving me and attaining the said age.
', '', '2019-08-30 00:37:38.271958');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('376dd7a6-7dff-4d79-a3db-9a601d75e1b8', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'Anthony Hamer NSW - Will_adult_children_grandchildren_final.docx', '', '2. I APPOINT my de facto partner BRIAN BROWN (hereinafter referred to as "my Trustee" which expression shall where the context so admits include the trustees or trustee for the time being hereof whether original or substituted) to be <<IF (Client/Will Details (NSW)/Executor/Person/Gender) Equal (Male) THEN>>executor<<ELSE>>executrix<<END IF>>  and trustee of this my Will AND I DECLARE that all trusts powers authorities and discretions hereinafter vested in my Trustee may be exercised by the survivor of them or any other trustee or trustees for the time being of this my Will.', '', '2019-08-30 00:37:38.327073');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('ec4803f5-1e1a-4928-8a10-076d110bb7ba', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'Draft will for Amelia.docx', '', '8. I EMPOWER my Trustee to employ in performing the trusts of this my Will such solicitors, accountants, real estate agents and other professional people as my Trustee shall think necessary or expedient and to pay such fees and charges in respect of such employment as are customary and reasonable for work of that nature.

IN WITNESS WHEREOF I have hereunto set my hand to this my Will 
this                    day of                        , Two Thousand and Eighteen.



SIGNED AND DECLARED by AMELIA TAMAYO,
Testatrix, to be her last will and testament, in our presence, 
who at her request, in her presence and in the presence 
of each other, all being present at the same time,
have signed our names as witnesses				------------------------------------
	AMELIA TAMAYO		




-----------------------------------------------		-------------------------------------------
(Witness signature)					(Witness signature)

Name: __________________________		Name: _________________________

Address: ________________________		Address: _______________________

________________________________		_______________________________

Occupation: ______________________		Occupation: _____________________


















LAST WILL 

OF

AMELIA TAMAYO




























[bookmark: _GoBack]
CMI Legal Pty Ltd
Suite 202, Level 2
815 Pacific Highway
Chatswood NSW 2067
Tel: 8386 8592
Email: john.zhang@cmiglobal.com.au




', '', '2019-08-30 00:37:38.380112');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('c1080a18-ab43-4efc-bcf6-ed83d61c5c8d', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'SIMPLE WILL WITH RESIDENCE TRUST.doc', '', '6. I GIVE; 
(a) $ LEGACY AMOUNT to CHARITY NAME (CHARITY ABN); 

(b) $ LEGACY AMOUNT3 to CHARITY NAME (CHARITY ABN) no2;

(c) $ LEGACY AMOUNT3  to CHARITY NAME (CHARITY ABN) NO3
if the gifts in 5(a), or 5(b) or 5(c) cannot take effect completely or at all, to the extent that it cannot take effect: to the charitable organisation or organisations in Australia which my executors in their discretion consider most nearly fulfils or fulfil the objects I intend to benefit in the share or shares my executors think fit; the receipt of the treasurer, secretary or public officer for the time being of a beneficiary under this provision is a sufficient discharge to my executors in respect of a gift to that beneficiary:
', '', '2019-08-30 00:37:38.438347');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('fd46f16e-0952-4994-81df-d18472c47a67', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'Simple Will (f) 2019.docx', '', '9. Any of my Trustees who practices a profession is entitled to be paid all usual professional fees for work done by that Trustee or his or her firm on the same basis as if he or she were not one of my Trustees but employed to act on behalf of my Trustees.', '', '2019-08-30 00:37:38.486052');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('1e2e9512-dcab-4148-8da2-67ee9d91c94b', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'Simple Will l DONE.doc', '', '11. My Executor must pay or otherwise secure the payment of any capital gains tax or other tax, charge or liability for which my estate is liable or becomes liable before distributing my Residual Estate', '', '2019-08-30 00:37:38.546256');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('090ced1f-e48e-4e30-8213-a11987809c07', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'WIL5.pdf', '', '6. I GIVE //10A//  of //10b//  //10c//  ($//10d//) in lieu of commission.* 
 

*//11// ', '', '2019-08-30 00:37:38.641409');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('e09d9a84-64a4-4884-93b7-e91914a90ec7', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'Will_Female_Children_2016.doc', '', '2. PROVIDED my husband ********* survives me by more than 30 days then I APPOINT him as Executor and Trustee of this my Will and I GIVE DEVISE AND BEQUEATH the whole of my Estate both real and personal of whatsoever kind and wheresoever situate to him absolutely.
', '', '2019-08-30 00:37:38.697552');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('d913fe1c-e0c2-4e1b-bc79-01da73884361', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'sample-1.doc', '', '20. Changing to physical 
[bookmark: _GoBack]The purchaser/s acknowledge that the vendor has right to request the purchaser to do physical settlement if it is required by the bank.






', '', '2019-08-30 00:37:38.729621');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('06d176ef-1aad-4c5f-a10f-92cc67a44277', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'Anthony Hamer NSW - Will_adult_children_grandchildren_final.docx', '', '6. I DIRECT that where capital gains tax is assessed against my Trustee either consequent upon my death or upon the sale of any asset of my estate by my Trustee such tax shall be a charge firstly upon the asset giving rise to the tax or upon the net proceeds of sale thereof (as the case may be) and secondly upon my estate.
IN WITNESS whereof I have hereunto set my hand to this my last Will and Testament this 	day of November 2018.

	[bookmark: _Hlk530490760]SIGNED by ANNA BANANA as her last Will and Testament in the presence of us both present at the same time who at her request and in her presence and in the presence of each other have hereunto subscribed our names as witnesses:
	)
)
)
)
)
)
	



	
	
	ANNA BANANA

	
	
	

	Signature of Witness
	
	Signature of Witness

	
	
	

	Witness Name
	
	Witness Name

	
	
	

	
	
	

	Witness Address
	
	Witness Address




2
2




DATED 	day of November 2018












LAST WILL AND TESTAMENT






of



ANNA BANANA


















SMOKEBALL CONTENT PUBLISHING
Licensed Conveyancers
Bridge Street
PO Box 2
SYDNEY  2000
Ph:  1300 658 382
Fax: 1300 658 383



', '', '2019-08-30 00:37:38.349071');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('ac3b612d-69b3-4f1b-974f-759fc2919fdc', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'Precedent Will - Female Testatrix.docx', '', '2.  I DIRECT that the following provisions shall have effect:

   2.1 	I APPOINT _____name of executor___________ of address of executor as the sole executor and trustee of this will but if ____name of executor____ does not survive me then I appoint _____name of alternative executor_____________ of ____address of alternative executor_________ as the sole executor and trustee of this will and I DIRECT that the expression ‘my Trustee’ where hereinafter used shall, unless the context otherwise requires, include the executor, executrix or trustee for the time being of this will.

2.2  I GIVE DEVISE AND BEQUEATH all my real and personal estate of whatsoever nature in Australia unto ___Beneficiary_____.

2.3	IN THE EVENT that __Beneficiary_________ does not survive me, I give devise and bequeath my estate in Australia to the following persons in the following manner:-

2.3.1	

3 In the administration of my estate and the execution of the trusts of this will my Executor, Executrix and Trustee shall in addition to any powers authorities and discretions conferred on him or her by law have the following powers discretions which he or she may exercise either alone or jointly with any other person or persons:
', '', '2019-08-30 00:37:38.409913');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('334f4591-47ba-4495-8da8-220882d2a236', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'SIMPLE WILL WITH RESIDENCE TRUST.doc', '', '8. I GIVE to NAME my painting by PAINTER, but in the event this gift fails it shall form part of my Residual Estate.

9. (a) I DIRECT my Trustee to divide my share portfolio into 2 equal Portions and to hold and dispose these Portions in accordance with the following provisions:

(i)
I give one Portion each to my children child name  and child name.

(a) If a gift referred to in clause 8(a)(i) lapses or fails because any of my children child name and child name do not survive me to become a beneficiary of a part in my estate but leave children who survive me (“the survivors”) then I DIRECT my Trustee to divide the part that would have been given into one or more sections and I GIVE each of the survivors one equal section: 

(b) If a gift referred to in clause 8(a)(i) lapses or fails because no person attains a vested interest in that Portion, that Portion is to be divided and added equally to the other respective Portions referred to in clause 8(a)(i), the gifts of which have not then lapsed or failed.
10. (a) I DIRECT my Trustee to sell my principal place of residence, TESTATOR ADDRESS, in the State of New South Wales and to divide the proceeds into 3 equal Portions to hold and dispose these Portions in accordance with the following provisions:

(i)
I give one Portion each to my children child name and child name; and

(ii)
I give one portion to my partner partner spouse name (“spouse name”)
(a) If a gift referred to in clause 9(a)(i) lapses or fails because any of my children child name and child name do not survive me to become a beneficiary of a part in my estate but leave children who survive me (“the survivors”) then I DIRECT my Trustee to divide the part that would have been given into one or more sections and I GIVE each of the survivors one equal section: 

(b) If a gift referred to in clause 9(a)(i) or 9(a) (ii) lapses or fails because no person attains a vested interest in that Portion, that Portion is to be divided and added equally to the other respective Portions referred to in clause 9(a)(i), the gifts of which have not then lapsed or failed.
11. I GIVE to SPOUSE NAME my GIFT TO SPOUSE but in the event this gift fails I GIVE it to the ALTERNATIVE BENIFICARY.
12. Residence Trust to my Partner
12.1. On the condition I am survived by my partner SPOUSE NAME by more than 30 days then I appoint my executors the Trustees of this Residence Trust (House Trustee).

12.2. I GIVE to my House Trustee any interest I have in HOUSE ADDRESS being Lot NUMBER in SP PLAN NUMBER?  and such portion of the residue of my estate that my House Trustee deems appropriate to settle a fund (fund), to consist of:

(a) my principal residence (property) at my death;

(b) the proceeds of the disposal of all or part of any asset in the fund;

(c) assets purchased using money in the fund;

(d) assets into which all or part of any asset in the fund is converted; and

(e) any sum placed in the fund in accordance the terms of this Will.

12.3. My House Trustee shall hold the fund on trust to provide my partner SPOUSE NAME a right of residence in my principal residence at my death for his life (the “Property”) or until my House Trustee consider he has vacated the Property for a period of more than six (6) months or permanently vacated the Property and no longer requires a residence to be provided for him by this fund on condition that SPOUSE NAME during the time that SPOUSE NAME resides in the Property maintains the Property and pays all outgoings, rates, taxes other expense including but not limited to expenses of a capital nature required to maintain the Property, and all insurances.

12.4. On setting up the fund my House Trustee may, out of the residue of my estate:

(a) free assets placed in the fund from debts charged on or owing with respect to those assets; 

(b) place in the fund a sum sufficient to cover debts charged on or owing with respect to assets placed in the fund; or

(c) make such further provision for the operation of the fund as my House Trustee considers reasonable by contributing further funds from my Estate as a reserve account within the fund prior to determining what comprises my Residual Estate;

12.5. My House Trustee may, if my partner SPOUSE NAME cannot in the reasonable opinion of my House Trustee afford to pay out of the fund, pay:

(a) the rates, taxes and other outgoings in respect of assets in the fund;

(b) the premiums on insurance policies on assets in the fund; and

(c) the costs of keeping assets in the fund in a reasonable state of repair.

12.6. My House Trustee may do all or any of the following:

(a) find tenants for and let all or part of any asset in the fund;

(b) sell or otherwise dispose of all or part of any asset in the fund;

(c) raise money on the security of all or part of any asset in the fund;

(d) purchase, rent, or acquire any rights in, or right to occupy, the whole or part of any house, flat, home unit, condominium, strata title, retirement village, nursing home or other accommodation or lend to my partner SPOUSE NAME money for this purpose on such terms as my Executor decides.

(e) register any asset acquired for the fund in the name or names of my House Trustee or any of them or in any other name or names;

(f) without the consent of any beneficiary use income or capital or both income and capital of the fund to insure any assets in the fund;

(g) if in the opinion of my House Trustee the fund is inadequate to carry out its purpose, augment the fund from the income or capital of my estate before it is distributed under this Will;

(h) accumulate income from assets in the fund to the fund;

(i) use fund assets to discharge any debt owed on any asset in the fund;

12.7. In addition to the powers given to them by this schedule my House Trustee may exercise the powers given to them by law and the rest of my Will.

12.8. It is my wish that my House Trustees use their powers to ensure that my partner SPOUSE NAME is provided with comfortable and appropriate accommodation out of the assets which I have made available for that purpose.  In doing so my House Trustee shall, as far as is practical, consult with my partner SPOUSE NAME and, so far as is consistent with the general intent of the trust, give effect to my partner SPOUSE NAME’S wishes.

12.9. On the lapsing of the right of residence the balance of the fund shall be distributed in accordance with the terms of my Residual Estate.

13.  (a)
I DIRECT my Trustee to divide the whole of my Residual Estate into 2 equal Portions and to hold and dispose these Portions in accordance with the following provisions:

(i)
I give one Portion each to my children CHILD NAME and 2ND CHILD NAME.

(a) If a gift referred to in clause 11(a)(i) lapses or fails because any of my children CHILD NAME and 2ND CHILD NAME do not survive me to become a beneficiary of a part in my estate but leave children who survive me (“the survivors”) then I DIRECT my Trustee to divide the part that would have been given into one or more sections and I GIVE each of the survivors one equal section: 

(b) If a gift referred to in clause 11(a)(i) lapses or fails because no person attains a vested interest in that Portion, that Portion is to be divided and added equally to the other respective Portions referred to in clause 11(a)(i), the gifts of which have not then lapsed or failed.

14. I GIVE my Trustee authority to take control over my digital assets and my Trustee shall have the power to access, handle, distribute and dispose of my digital assets whatsoever they comprise. For clarity my digital assets includes files stored on my digital devices, including but not limited to, desktops, laptops, tablets, peripherals, storage devices, mobile telephones, smartphones, and any similar digital device which currently exists or may exist as technology develops or such comparable items as technology develops. The term “digital assets” also includes but is not limited to emails received, email accounts, digital music, digital photographs, digital videos, software licenses, social network accounts, file sharing accounts, financial accounts, domain registrations, DNS service accounts, web hosting accounts, tax preparation service accounts, online stores, affiliate programs, other online accounts and similar digital items which currently exist or may exist as technology develops or such comparable items as technology develops, regardless of the ownership of the physical device upon which the digital item is stored.
15. My Trustee may, on such terms and for such purposes as he thinks appropriate, without being liable for loss:

(a) sell;

(b) postpone the sale of;

(c) lease;

(d) mortgage; and

(e) manage,

the whole or any part of my estate.
16. My Trustee may invest or re-invest any funds in:

(a) any investment authorised by law; 

(b) any investment in which any part of my estate is invested at my death; 

(c) all or any part of any form of real estate of any tenure (including a lot within the meaning of any Strata Titles or Community Titles legislation) whether or not productive of income;
(d) shares in a company in which all the issued shares are owned by persons each of whom, because of that share ownership, has an exclusive right to occupy a part of a building on the land; 

(e) any mortgages including contributory mortgages; and

(f) shares, debentures, stocks, notes or similar securities in any public company listed or intended to be listed on an Australian Stock Exchange.

17. My Trustee may:

(a) apply for or accept bonus shares or other rights or benefits offered by a company in which my estate has an interest;
(b) apply for the maintenance, education, advancement or benefit of a beneficiary, the whole or any part of the capital or income of that share of my estate to which that beneficiary is entitled or may in future be entitled and the receipt of the payee is an absolute discharge; 

(c) determine whether receipts and outgoings are capital or income; 

(d) retain any asset even though it is wasting, hazardous or reversionary; 

(e) maintain, repair, improve, develop, alter, renovate, pull down or erect any land and buildings; 
(f) without the consent of any beneficiary, appropriate any assets of my estate in or towards the satisfaction of a legacy or a share of any person in my estate and, in so doing, ascertain and fix the value of any such asset as my Trustee think fit and for that purpose employ a duly qualified valuer in any case where necessary; and
(g) borrow money or obtain credit or financial accommodation from any person, with or without security and with or without interest and on such terms as my Trustee decide. 

18. My Trustee must pay or otherwise secure the payment of any capital gains tax or other tax, charge or liability for which my estate is liable or becomes liable before distributing my Residual Estate.
19. It is my wish that my body be cremated and my ashes divided into 2 portions and 1 portion scattered in the Arafura Sea off the coast of the Northern Territory in the Beagle Gulf off Larrakeah and the other portion scattered adjacent to my parents niche in the Norther Suburbs Crematorium.
* THE REMAINDER OF THIS PAGE HAS BEEN INTENTIONALLY LEFT BLANK *

Dated:


2018
………………………………..………………………………….……..
Signature of Testator

TESTATOR NAME
SIGNED by the Testator in the presence of us both being present at the same time and attested by us in the presence of him and of each other.

	Signature of Witness

Print name of Witness in full

Address of Witness

Occupation of Witness
	Signature of Witness

Print name of Witness in full

Address of Witness

Occupation of Witness


Private Client • Business •Property • Estate • Litigation

Suite 3, Level 1, 2 Barrack Street, Sydney NSW 2000

PO Box Q605, QVB Sydney NSW 1230

PH: +61 2 8244 6800 Fax: +61 2 8244 6801

www.frlegal.com.au    ABN 30 624 032 373





……………………………
……………………………..
………………………….
Testator
Witness



Witness

', '', '2019-08-30 00:37:38.460682');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('6d59bbe9-3f60-4699-b699-16fbfc46f607', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'Simple Will l DONE.doc', '', '8. My Executor may, on such terms and for such purposes as they think appropriate, without being liable for loss:

(a) sell;

(b) postpone the sale of;

(c) lease;

(d) mortgage; and

(e) manage,

the whole or any part of my estate.
', '', '2019-08-30 00:37:38.544298');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('927bef9e-af70-497b-a9c2-6c2c0c986dac', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'WIL5.pdf', '', '4. I APPOINT //8A//  of //8b//  as guardian of my minor children.* 
 

*//9// ', '', '2019-08-30 00:37:38.637665');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('b833b6e0-5a49-49b1-ab7a-a1428faac8ab', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'WIL7.pdf', '', '6. I GIVE //10A//  of //10b//  //10c//  ($//10d//) in addition to any commission and 

professional and other fees //10e//  is entitled to be paid.* 
 ', '', '2019-08-30 00:37:38.696601');
INSERT INTO public.clauses (id, "firmId", "matterCategory", "originalSource", "clauseTitle", "clauseText", "compareText", created) VALUES ('bd95aa96-9fbe-428d-9e89-2debca6b0263', '1bb77abc-0b57-4934-b1f5-6bb40139c4e1', 'EstatePlanning', 'sample-1.doc', '', '17. Acceptance of Title
General condition 12.4 is to be added:
Where the purchaser is deemed by section 27(7) of the Sale of Land Act 1962 to have given the deposit release authorization referred to the section 27(1), the purchaser is also deemed to have accepted title in the absence of any prior express objection to title.', '', '2019-08-30 00:37:38.728396');


--
-- Data for Name: table1; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.table1 (name) VALUES ('James');
INSERT INTO public.table1 (name) VALUES ('James 1');


--
-- Name: clauses clauses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clauses
    ADD CONSTRAINT clauses_pkey PRIMARY KEY (id);


--
-- Name: table1 table1_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.table1
    ADD CONSTRAINT table1_pkey PRIMARY KEY (name);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM rdsadmin;
REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

